import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_login/bloc/authentication_bloc.dart';

//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:bloc_login/hotel/hotel_map_page.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void restaurantMap(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return HotelMapPage();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wander About'),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Wander About',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            ListTile(
              //Movies
              leading: Icon(
                IconData(0xe40d, fontFamily: 'MaterialIcons'),
              ),
              title: Text(
                'Movies',
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                IconData(0xe532, fontFamily: 'MaterialIcons'),
              ),
              title: Text(
                'Restaurants',
                style: TextStyle(fontSize: 17),
              ),
              onTap: () => restaurantMap(context),
            ),
            ListTile(
                leading: Icon(
                  IconData(0xe396, fontFamily: 'MaterialIcons'),
                ),
                title: Text(
                  'Hospitals',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(
                  IconData(0xe3b3, fontFamily: 'MaterialIcons'),
                ),
                title: Text(
                  'Log out',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  // Navigator.pop(context);
                  BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
                }),
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 48.0,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () => {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          //color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/Logos/movies.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 90,
                        width: 90,
                        alignment: Alignment.center,
                      ),
                      Text(
                        'Movies',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 20,
                ),
                InkWell(
                  onTap: () => restaurantMap(context),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          // color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/Logos/hotel.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 90,
                        width: 90,
                        alignment: Alignment.center,
                      ),
                      Text(
                        'Restaurants',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () => {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          //color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/Logos/hospital.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 90,
                        width: 90,
                        alignment: Alignment.center,
                      ),
                      Text(
                        'Hospitals',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    BlocProvider.of<AuthenticationBloc>(context)
                        .add(LoggedOut());
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          // color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/Logos/logout.png'),
                            fit: BoxFit.fill,
                          ),
                          //color: Colors.amber,
                        ),
                        height: 90,
                        width: 90,
                        alignment: Alignment.center,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
