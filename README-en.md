[日本語版](https://github.com/wassy310/WiCON2023-GPS-map-app/blob/master/README.md)

# WiCON2023-GPS-map-app

This will be used in WiCON-2023 (Quinart).

## Overview
This is a Flutter-based application to check information on the appearance of the Okinawa rail and how it is doing after protection.  
It is designed to run on Android / iOS smartphones (also runs on web browsers, Windows, Linux, and MacOS).  
For more information on Flutter, please refer to [here](https://github.com/flutter/flutter).

## Getting Started
### Use Release
We are not ready for release at this time.

## Features
Based on information on the appearance of the Okinawa-rail, an icon of the Okinawa-rail is displayed on a map to inform neighbors.  
The main purpose is to prevent roadkill of Okinawa-rail.

## Directory
Just the main ones.
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
│   |   └── . (Facility staff page)
│   └── main.dart
└── pubspec.yaml
```

## Environments
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

## Author
[Wassy | Ryoga Washizawa](https://github.com/wassy310)

## Contact
- [GitHub Issues](https://github.com/wassy310/WiCON2023-GPS-map-app/issues).  
- Twitter
  - [waaaa5267](https://twitter.com/waaaa5267)
- Discord
  - Account: Wassy#3241
  - Server: https://discord.gg/uAUrUnwAh9