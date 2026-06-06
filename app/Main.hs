{-# LANGUAGE OverloadedStrings, OverloadedLabels, OverloadedRecordDot, ImplicitParams, BlockArguments #-}

module Main (main) where

import GI.Gtk qualified as Gtk
import GI.Gio qualified as Gio
import Data.GI.Base (AttrOp ((:=)), new, set, get, on)

main :: IO ()
main = do
  app <- new Gtk.Application [#applicationId := "dev.haruki7049.stugit"]
  -- `on` によってシグナルが送られたときのコールバックを設定できる
  -- ここでは app に #activate シグナルが送られたとき
  _ <- on app #activate do
    -- callback では ImplicitParams 拡張によってレシーバー `?self` を参照できる
    -- `get` によってプロパティを参照できる
    print =<< ?self `get` #applicationId
    win <- new Gtk.ApplicationWindow [#application := ?self]
    -- `set` によってプロパティを設定できる
    win `set` [#title := "window title"]
    win `set` [#defaultWidth := 400, #defaultHeight := 300]
    -- OverloadedRecordDot 拡張によるメソッド呼び出し風の記法も使える
    win.present

  -- Start the GTK application main loop
  _ <- Gio.applicationRun app Nothing
  pure ()
