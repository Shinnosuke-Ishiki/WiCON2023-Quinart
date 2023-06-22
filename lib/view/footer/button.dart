import 'dart:math';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key, this.title = ''}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Footer> {
  static const _radius = 130.0;
  static const _startRad = pi / 20;
  static const _endRad = pi / 2 - _startRad;

  bool _isClose = false;

  final _backFloatingActionButtonParameters = [
    {
      "bottom": 0.0,
      "right": 0.0,
      "elevation": 0.0,
      "color": Colors.redAccent,
    },
    {
      "bottom": 0.0,
      "right": 0.0,
      "elevation": 0.0,
      "color": Colors.greenAccent
    },
    {
      "bottom": 0.0,
      "right": 0.0,
      "elevation": 0.0,
      "color": Colors.purpleAccent,
    },
  ];

  void _tapFloatingActionButton() {
    setState(() {
      _isClose = !_isClose;
      if (_isClose) {
        for (var _backFloatingActionButtonParameter
            in _backFloatingActionButtonParameters) {
          _backFloatingActionButtonParameter["bottom"] = 0.0;
          _backFloatingActionButtonParameter["right"] = 0.0;
          _backFloatingActionButtonParameter["elevation"] = 0.0;
        }
      } else {
        for (int i = 0; i < _backFloatingActionButtonParameters.length; i++) {
          var rad = i *
                  (_endRad - _startRad) /
                  (_backFloatingActionButtonParameters.length - 1) +
              _startRad;
          _backFloatingActionButtonParameters[i]["bottom"] =
              _radius * cos(rad) as double;
          _backFloatingActionButtonParameters[i]["right"] =
              _radius * sin(rad) as double;
          _backFloatingActionButtonParameters[i]["elevation"] = 6.0 as double;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> floatingActionButtons =
        List.generate(_backFloatingActionButtonParameters.length, (i) {
      var param = _backFloatingActionButtonParameters[i];
      return AnimatedPositioned(
        duration: const Duration(milliseconds: 200),
        right: param["right"],
        bottom: param["bottom"],
        child: FloatingActionButton(
          elevation: param["elevation"],
          hoverElevation: param["elevation"],
          focusElevation: param["elevation"],
          highlightElevation: param["elevation"],
          backgroundColor: param["color"],
          onPressed: () {
            print("pressed");
          },
        ),
      );
    })
          ..add(FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              _tapFloatingActionButton();
            },
          ));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
        ),
      ),
      floatingActionButton: SizedBox(
        width: 2 * _radius,
        height: 2 * _radius,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: floatingActionButtons,
        ),
      ),
    );
  }
}
