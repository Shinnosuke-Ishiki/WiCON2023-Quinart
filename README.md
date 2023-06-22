[英語版](https://github.com/wassy310/WiCON2023-GPS-map-app/blob/master/README-en.md)

# WiCON2023-GPS-map-app

WiCON-2023（クイナート）で使用予定

## 概要
ヤンバルクイナの出現情報や、保護後の様子を確認するFlutterベースのアプリケーションです。  
Android / iOS スマートフォンでの動作を想定しています(webブラウザ、Windows、Linux、MacOSでも動きます)。  
Flutterの詳しい情報は[こちら](https://github.com/flutter/flutter)をご確認ください。

## 使うには
### リリースされたものを使用する
まだリリースはありません。

## 機能
ヤンバルクイナの出現情報をもとに、地図上にヤンバルクイナアイコンを表示し、近隣の方にお知らせします。  
ヤンバルクイナのロードキル防止を主な目的としています。

## ディレクトリ構成
主なものは以下の通りです。
```
.
├── assets
│   └── img
|       ├── kuina.png
|       └── now.png
├── lib
|   ├── service
|   |   ├── appearance_info.dart
|   |   ├── attention.dart
|   |   └── report.dart
|   ├── staff
│   |   └── . (施設職員専用ページ)
│   └── main.dart
└── pubspec.yaml
```

## 開発環境
|          |     |
|   :-:    | --- |
| OS       | Windows 10 Pro |
| IDE      | Visual Studio Code |
| LANG     | Dart (Flutter 3.10.5), C++(.ino) |
| BACKEND  | - |
| PACKAGES | [flutter_map](https://pub.dev/packages/flutter_map), [latlong2](https://pub.dev/packages/latlong2), [flutter_map_marker_cluster](https://pub.dev/packages/flutter_map_marker_cluster), [M5StickC](https://docs.m5stack.com/en/core/m5stickc), [TinyGPSPlus](http://arduiniana.org/libraries/tinygpsplus/) |
| Android  | Xperia Ace (Android 9), AVD - Pixel 4 API 27 (Android 9) |
| iOS      | CodeMagic (macOS M1 Standard VM) |
| HARDWARE | M5StickC, UNIT-GPS(for M5Stack) |

## 作成者
[Wassy | Ryoga Washizawa](https://github.com/wassy310)

## 連絡
- [GitHub Issues](https://github.com/wassy310/WiCON2023-GPS-map-app/issues)  
- Twitter
  - [waaaa5267](https://twitter.com/waaaa5267)
- Discord
  - アカウント: Wassy#3241
  - サーバ: https://discord.gg/uAUrUnwAh9