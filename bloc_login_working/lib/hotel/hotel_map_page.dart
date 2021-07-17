import 'package:bloc_login/hotel/Foodiemap.dart';
import 'package:flutter/material.dart';
/*import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_login/bloc/authentication_bloc.dart';*/

//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import './map.dart';

class HotelMapPage extends StatefulWidget {
  @override
  _HotelMapPageState createState() => _HotelMapPageState();
}

class _HotelMapPageState extends State<HotelMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wander About'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              // height: 500,
              child: Text(
                'Restaurants',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              height: 500,
              alignment: Alignment.center,
              child: FoodieMap(),
            ),
          ],
        ),
      ),
    );
  }
}
