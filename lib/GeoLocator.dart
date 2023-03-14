import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

/// password of qaswar 874745rM

class geolocator extends StatelessWidget {
  const geolocator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: geolocatorSTF(),
    );
  }
}
///stf
class geolocatorSTF extends StatefulWidget {
  const geolocatorSTF({Key? key}) : super(key: key);

  @override
  State<geolocatorSTF> createState() => _geolocatorSTFState();
}

class _geolocatorSTFState extends State<geolocatorSTF> {
  ///This is a geolocator code
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              child: FutureBuilder(
                future: _determinePosition(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    print(snapshot.data.toString());
                    return Container(
                      child: Text(
                        snapshot.data.toString()
                      ),
                    );
                  } else {
                    return Container(
                      child: Text(
                          'waiting for data'
                      ),
                    );
                  }
                }
              ),

            ),
          ],
        ),
      ),
    );
  }
}

