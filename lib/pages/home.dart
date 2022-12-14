// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sabi/pages/SignUp-SignIn-Forgot/chart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "24",
                    style: TextStyle(fontSize: 100),
                  ),
                  Text("°", style: TextStyle(fontSize: 100)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Celcius",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("|", style: TextStyle(fontSize: 20)),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Fahrenheit", style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xff40ECB6),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        height: 100,
                        width: 150,
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hum",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image(
                                image: AssetImage("lib/assets/icons/hum.png"),
                                height: 50,
                                width: 50,
                              ),
                              Text(
                                "75%",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xff695CFE),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        height: 100,
                        width: 150,
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "AC",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Image(
                                image: AssetImage("lib/assets/icons/fun.png"),
                                height: 50,
                                width: 50,
                              ),
                              Switch.adaptive(
                                activeColor: Colors.white,
                                activeTrackColor: Color(0xff695CFE),
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.white,
                                value: val,
                                onChanged: (value) {
                                  setState(() {
                                    val = !val;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Additional info",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("Temperature",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Humidity",
                          style: TextStyle(fontSize: 20, color: Colors.grey))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       "16:00",
                  //       style: TextStyle(fontSize: 20),
                  //     ),
                  //     Text(
                  //       "17:00",
                  //       style: TextStyle(fontSize: 20),
                  //     ),
                  //     Text(
                  //       "18:00",
                  //       style: TextStyle(fontSize: 20),
                  //     ),
                  //     Text(
                  //       "19:00",
                  //       style: TextStyle(fontSize: 20),
                  //     ),
                  //   ],
                  // ),
                  LineChartSample2(),
                  SizedBox(
                    height: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
