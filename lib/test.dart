import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
            title: Text("Weather forecast"),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.deepOrange),
        body: WeatherBody(),
      ),
    );
  }
}

class WeatherBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextFieldCity(),
                  Divider(),
                  CityDetail(),
                  Divider(),
                  Divider(),
                  TemperatureDetail(),
                  Divider(),
                  Divider(),
                  ExtraViewDetails(),
                  Divider(),
                  BottomWeatherDetail(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            focusColor: Colors.white,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            border: InputBorder.none,
            hintText: 'Enter City Name',
            hintStyle: TextStyle(color: Colors.white),
            fillColor: Colors.white,
            hoverColor: Colors.white),
      ),
    );
  }
}

class CityDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Murmans oblast, RU',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        Text(
          'Friday, Mar 20, 20202',
          style: TextStyle(fontSize: 17, color: Colors.white),
        )
      ],
    );
  }
}

class TemperatureDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.wb_sunny,
              size: 70,
              color: Colors.white,
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '14 ℃',
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'LIGHT SNOW',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class ExtraViewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'km/hr',
              style: TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '3',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '20',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}

class BottomWeatherDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('7-DAY WEATHER FORECAST',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          Divider(),
          ListForecast(),
        ],
      ),
    );
  }
}

class ListForecast extends StatelessWidget {
  final tiles = [
    ListItem("Monday", "14 ℃"),
    ListItem("Tuesday", "17 ℃"),
    ListItem("Wednesday ", "22 ℃"),
    ListItem("Thursday ", "22 ℃"),
    ListItem("Friday", "25 ℃"),
    ListItem("Saturday", "23 ℃"),
    ListItem("Sunday", "25 ℃"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tiles.length,
        itemBuilder: (context, index) {
          return tiles[index];
        },
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String weekDay;
  final String temperature;
  const ListItem(this.weekDay, this.temperature);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 170,
      color: Color.fromRGBO(255, 255, 255, 0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(weekDay, style: TextStyle(color: Colors.white, fontSize: 25)),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(temperature,
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}
