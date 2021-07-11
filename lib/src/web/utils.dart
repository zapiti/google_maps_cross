

import 'dart:ui' as ui show Color;

import 'package:google_maps/google_maps.dart';
import 'package:google_directions_api/google_directions_api.dart'
    show GeoCoord, GeoCoordBounds;

extension WebLatLngExtensions on LatLng {
  GeoCoord toGeoCoord() => GeoCoord(this.lat.toDouble(), this.lng.toDouble());
}

extension WebGeoCoordExtensions on GeoCoord {
  LatLng toLatLng() => LatLng(this.latitude, this.longitude);
}

extension WebGeoCoordBoundsExtensions on GeoCoordBounds {
  LatLngBounds toLatLngBounds() => LatLngBounds(
        this.southwest.toLatLng(),
        this.northeast.toLatLng(),
      );

  GeoCoord get center => GeoCoord(
        (this.northeast.latitude + this.southwest.latitude) / 2,
        (this.northeast.longitude + this.southwest.longitude) / 2,
      );
}

extension WebLatLngBoundsExtensions on LatLngBounds {
  GeoCoordBounds toGeoCoordBounds() => GeoCoordBounds(
        northeast: this.northEast.toGeoCoord(),
        southwest: this.southWest.toGeoCoord(),
      );
}

extension WebColorExtensions on ui.Color {
  String toHashString() =>
      '#${this.red.toRadixString(16)}${this.green.toRadixString(16)}${this.blue.toRadixString(16)}';
}


