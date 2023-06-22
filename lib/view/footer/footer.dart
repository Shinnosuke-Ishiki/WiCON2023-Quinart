import 'package:flutter/material.dart';

import 'package:map_app/main.dart';
import 'package:map_app/service/now.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_app/service/appearance_info.dart';
import 'package:map_app/service/attention.dart';
import 'package:map_app/service/staff/form.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<Footer> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => const MyApp())));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => const Now())));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const AppearanceInfo())));
        break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const Attention())));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => const MyForm())));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(26.526505783682545, 128.0300361181478),
          zoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
          ),
          MarkerClusterLayerWidget(
            options: MarkerClusterLayerOptions(
              builder: (context, markers) {
                return FloatingActionButton(
                  onPressed: null,
                  child: Text(markers.length.toString()),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: '現在地'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: '出現情報'),
          BottomNavigationBarItem(
              icon: Icon(Icons.report_problem), label: '出現注意区域'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
