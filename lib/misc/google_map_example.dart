import 'dart:async';

import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapSample extends StatefulWidget {
  const GoogleMapSample({super.key});

  @override
  State<GoogleMapSample> createState() => MapSampleState();
}
/*

class MapSampleState extends State<GoogleMapSample> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

*/

class MapSampleState extends State<GoogleMapSample> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Google Map with Polyline',
      child: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(28.535907, 77.390341), // Initial map position
          zoom: 12.0,
        ),
        mapType: MapType.terrain,
        markers: <Marker>{
          const Marker(
            markerId: MarkerId("marker_1"),
            position: LatLng(28.535907, 77.390341),
            infoWindow: InfoWindow(title: "Marker 1"),
          ),
          const Marker(
            markerId: MarkerId("marker_2"),
            position: LatLng(28.631197, 77.379227),
            infoWindow: InfoWindow(title: "Marker 2"),
          ),
          // Add more markers if needed
        },
        polylines: <Polyline>{createPolyline()},
        // You can add more options and customize the map here
      ),
    );
  }

  Polyline createPolyline(){
    Polyline polyline = const Polyline(
      polylineId: PolylineId("polyline_1"),
      color: Colors.blue,
      width: 5,
      jointType: JointType.bevel,
      points: [
        LatLng(28.535907, 77.390341),
        LatLng(28.553018, 77.375755),
        LatLng(28.559353, 77.381196),
        LatLng(28.561235, 77.379322),
        LatLng(28.590888, 77.373824),
        LatLng(28.596680, 77.372046),
        LatLng(28.623937, 77.374273),
        LatLng(28.628762, 77.374769),
        LatLng(28.630706, 77.374779),
        LatLng(28.631077, 77.375010),
        LatLng(28.631245, 77.377041),
        LatLng(28.631350, 77.380008),
        LatLng(28.630481, 77.379945),
        LatLng(28.630570, 77.379501),
        LatLng(28.631197, 77.379227),
      ],
    );
    return polyline;
  }
}
