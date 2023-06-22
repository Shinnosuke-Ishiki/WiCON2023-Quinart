import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';

import 'package:map_app/view/drawer/custom_drawer_main.dart';
import 'package:map_app/view/footer/footer.dart';

class Now extends StatelessWidget {
  const Now({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'main page',
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  final List<Marker> markers = [
    Marker(
      width: 25.0,
      height: 25.0,
      point: LatLng(26.526505783682545, 128.0300361181478),
      builder: (ctx) => Image.asset('assets/img/now.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('クイナート'),
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                center: LatLng(26.526505783682545, 128.0300361181478),
                zoom: 13.0,
              ),
              children: [
                TileLayer(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: const ['a', 'b', 'c'],
                ),
                MarkerClusterLayerWidget(
                  options: MarkerClusterLayerOptions(
                    markers: markers,
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
            const Positioned(
              child: Footer(),
            ),
          ],
        ),
        drawer: const CustomDrawer());
  }
}
