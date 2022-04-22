# DesktopCleaner
デスクトップ上のファイルおよびディレクトリを自動的に整理してくれるプログラム

## プログラムの処理の概要
木曜日にPCを起動したらデスクトップ上のファイルおよびディレクトリ群を自動で整理してくれます.  
デスクトップ上のファイルおよびディレクトリ群は, デスクトップから任意のディレクトリの下にある最適なディレクトリに移動します.  
(木曜日以外にしたければプログラムをいじってください.)

## プログラムの処理の例
[前提条件] デスクトップに`memo.txt`のみが置かれていたとする.
```=shell
~/Desktop $ ls
memo.txt
~/Files $ ls
```
1. yyyy/mm/dd(木)にPCを起動する.
2. `memo.txt`はデスクトップから取り除かれ, `~/Files/yyyy/mm/dd/`の下に置かれる.
```=shell
~/Desktop $ ls

~/Files/yyyy/mm/dd $ ls
memo.txt
```

## 実行環境
- macOS

## 使い方
### 1. ホームディレクトリの下に`DesctopCleaner.sh`を置く
```
~ $ ls
DesktopCleaner.sh
```
### 2. 環境変数の設定
```
$ export $FILES=(任意のディレクトリ: 上の例では, ~/Files)
```
### 3. crontabの設定
```
$ crontab -e

@reboot sh ~/DesktopCleaner.sh # <-- 追加
```
### 3. 木曜日まで待つ
