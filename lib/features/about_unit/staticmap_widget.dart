import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart' as latLng;

class StaticmapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String token =
        'pk.eyJ1IjoicmV3ZXJiIiwiYSI6ImNsMnloZDd0bjAxMXgzam8xZTc1YnhxMDEifQ.xLh0PSo6a9WMFHekCFmZyg';
    final String style =
        'https://api.mapbox.com/styles/v1/rewerb/cl2yhsv6z000e14n5qwvx3rcu/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicmV3ZXJiIiwiYSI6ImNsMnloZDd0bjAxMXgzam8xZTc1YnhxMDEifQ.xLh0PSo6a9WMFHekCFmZyg';

    return Container(
      child: Container(
        width: 334,
        height: 154,
        margin: EdgeInsets.only(top: 10, bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          shape: BoxShape.rectangle,
        ),
        child: FlutterMap(
          options: MapOptions(
            center: latLng.LatLng(53.4, 14.5),
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(urlTemplate: style, additionalOptions: {
              'accessToken': token,
            }),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 30.0,
                  height: 30.0,
                  point: latLng.LatLng(53.4, 14.5),
                  builder: (ctx) => Container(child: FlutterLogo()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
