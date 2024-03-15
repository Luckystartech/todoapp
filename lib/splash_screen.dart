import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'utils/widgets/my_circle_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  const Positioned(
                    top: -150,
                    right: -250,
                    child: MyCircleWidget(
                      width: 500,
                      height: 500,
                      radius: 500,
                      padding: 0,
                    ),
                  ),

                  // image carousel
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 200, left: 25, right: 25),
                    child: Center(
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'images/illustration_1.svg',
                            height: 300,
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          const Text(
                            'To-Do List',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF030303),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment,',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              color: Color(0xFF030303),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward,),
                              label: Text('Get Started',),
                              style: ButtonStyle(
                                // backgroundColor: ,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
