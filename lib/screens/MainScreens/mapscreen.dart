import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Map Example'),
      ),
      // body: FlutterMap(
      //   options: const MapOptions(
      //     center: LatLng(0, 0), // Initial map center
      //     zoom: 2.0, // Initial zoom level
      //   ),
      //   layers: [
      //     TileLayerOptions(
      //       urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      //       subdomains: ['a', 'b', 'c'],
      //     ),
      //     MarkerLayerOptions(
      //       markers: [
      //         Marker(
      //           width: 30.0,
      //           height: 30.0,
      //           point: const LatLng(0, 0), // Marker position
      //           builder: (ctx) => Container(
      //             child: const FlutterLogo(),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 300,
          child: FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(26.9124336, 75.7872709),
              initialZoom: 14,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              RichAttributionWidget(
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                    onTap: () =>
                        (Uri.parse('https://openstreetmap.org/copyright')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
