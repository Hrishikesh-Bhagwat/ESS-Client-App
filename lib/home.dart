import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              child: Image.asset("assets/corn.png"),
              color: Colors.transparent,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "FARM HEALTH",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: MonitorCard(
                    name: "Temperature",
                    value: 58.0,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: MonitorCard(
                    name: "Humidity %",
                    value: 65,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                child: MonitorCard(
                  name: "Moisture",
                  value: 30,
                ),
                width: 200,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Container(
                  height: 70,
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    "START WATER FLOW!",
                    style: TextStyle(
                      fontFamily: "Girassol",
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MonitorCard extends StatelessWidget {
  final String name;
  final double value;
  const MonitorCard({@required this.name, @required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 1.0,
          color: Colors.yellow,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 20.0,
              color: Colors.pinkAccent,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "$value",
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
