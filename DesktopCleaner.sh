#!/bin/bash

# パスの作成
today=$(date +'%Y/%-m/%-d')
path="$FILES/$today"

# 以下の条件式は次の順で処理される
#  ① : 今日の日付でディレクトリをまだ作成していない [Yes]->②, [No]->終了
#  ② : 今日の曜日が木曜日か　                   [Yes]->③, [No]->終了
#  ③ : デスクトップにファイルが存在する           [Yes]->ディレクトリを作成し, ファイル群を移動, [No]->終了
if [ ! -d $path ] && [ "$(date +'%w')" -eq 4 ] && [ -n "$(ls $HOME/Desktop)" ]; then
    # ディレクトリの作成
    mkdir -p $path
    # ファイル群の移動
    mv $HOME/Desktop/* $path
fi
