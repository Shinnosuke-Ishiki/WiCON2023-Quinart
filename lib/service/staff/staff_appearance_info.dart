import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';

import 'package:map_app/view/drawer/staff/custom_drawer_staff_info.dart';

class StaffAppearanceInfo extends StatelessWidget {
  const StaffAppearanceInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'appearance info',
      home: InfoScreen(),
    );
  }
}

class InfoScreen extends StatelessWidget {
  InfoScreen({super.key});
  final List<Marker> markers = [
    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(26.52688015926964, 128.0303204321559),
      builder: (ctx) => Image.asset('assets/img/kuina.png'),
    ),
    Marker(
      width: 40.0,
      height: 40.0,
      point: LatLng(26.743169, 128.285433),
      builder: (ctx) => Image.asset('assets/img/kuina.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('出現情報'),
        ),
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(26.52688015926964, 128.0303204321559),
            zoom: 13.0,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
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
        drawer: const CustomDrawerStaffInfo());
  }
}
