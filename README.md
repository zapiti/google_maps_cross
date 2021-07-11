# GoogleMapsCross

A flutter package that allows you to create basic timelines on your flutter application. This is customizable and easy to plugin to your application. You will find the following features:

* Usage google maps with crossplatform

<image src="https://github.com/zapiti/google_maps_cross/blob/main/maps.png" height="300em"/>

## Getting Started

You will need to add the following dependency in your `pubspec.yaml` file to download the depedency.

```dart
dependencies:
  flutter:
    sdk: flutter
  google_maps_cross: 1.0.0
```


## Usage

> import 'package:google_maps_cross/google_maps_cross.dart';

### WEB
   * In file index.html:
   
   
    <body id="app-container">
    <script src="https://maps.googleapis.com/maps/api/js?key=API_KEY"></script>
    <script src="main.dart.js?version=2.1.33" type="application/javascript"></script>
    </body>

    
### iOS
 * In file AppDelegate.swift:
 
    import UIKit
    import Flutter
    import GoogleMaps

    @UIApplicationMain
    @objc class AppDelegate: FlutterAppDelegate {
      override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
      ) -> Bool {
        GMSServices.provideAPIKey("API_KEY")
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
      }
    }
  
    
 ### Android
   * In file AndroidManifest.xml:
    
       <application
            android:label="example"
            android:icon="@mipmap/ic_launcher">
           <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="API_KEY"/>
            <activity
                android:name=".MainActivity"
                android:launchMode="singleTop"
                android:theme="@style/LaunchTheme"
                android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
                android:hardwareAccelerated="true"
                android:windowSoftInputMode="adjustResize">

## Implementation

```
            GoogleMapCross(
                  key: key,
                  interactive: true,
                  onTap: (x) {},
                  initialPosition: GeoCoord(-28.4831, -47.3916),
                  initialZoom: 5.0,
                  markers: Set.from([
                    Marker(GeoCoord(-18.4435, -47.3415), onTap: (_) {
                      print("description3");
                    })
                  ]),
                ),
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

