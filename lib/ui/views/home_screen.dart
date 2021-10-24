import 'dart:async';
// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

import './widgets/bouncing_ball.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var timer;
  bool isAAA = true;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 200), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData styles = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            // Positioned(
            //   left: -100,
            //   top: -100,
            //   child: Container(
            //     width: 400,
            //     height: 400,
            //     decoration:
            //         BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            //   ),
            // ),
            // Positioned(
            //   right: 0,
            //   top: 200,
            //   child: Container(
            //     width: 300,
            //     height: 300,
            //     decoration:
            //         BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            //   ),
            // ),
            // Positioned(
            //   left: -200,
            //   bottom: -200,
            //   child: Container(
            //     width: 600,
            //     height: 600,
            //     decoration:
            //         BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            //   ),
            // ),
            // BouncingBall(
            //   color: Colors.red,
            //   size: 200,
            //   isRandomPosition: true,
            //   speed: 1.4,
            // ),
            // BouncingBall(
            //   color: Colors.green,
            //   size: 400,
            //   isRandomPosition: true,
            //   speed: 0.8,
            // ),
            // BouncingBall(
            //   color: Colors.cyan,
            //   size: 100,
            //   isRandomPosition: true,
            //   speed: 2,
            // ),
            // Container(
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.green,
            //   ),
            //   width: 40.0,
            //   height: 40.0,
            // )
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: isAAA ? 1.0 : 0.0,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Keynesian \n Games',
                              textAlign: TextAlign.center,
                              style: styles.textTheme.headline1
                                  ?.copyWith(height: 1.1),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              ClearButton(
                                title: 'one Player',
                                // onPressed: () => print('Hello'),
                                onPressed: () => setState(() => isAAA = !isAAA),
                              ),
                              ClearButton(title: 'Multiple Player'),
                              ClearButton(title: 'settings'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class SettingScreen extends StatelessWidget {
//   const SettingScreen({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     ThemeData styles = Theme.of(context);
//     return Container(
//                     child: Column(
//                       children: <Widget>[
//                         Expanded(
//                           flex: 1,
//                           child: Center(
//                             child: Text(
//                               'Setting',
//                               textAlign: TextAlign.center,
//                               style: styles.textTheme.headline1
//                                   ?.copyWith(height: 1.1),
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           flex: 2,
//                           child: Column(
//                             children: [
//                               ClearButton(
//                                 title: 'Back to Home',
//                                 // onPressed: () => print('Hello'),
//                                 onPressed: () => setState(() => isAAA = !isAAA),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),;
//   }
// }

class ClearButton extends StatelessWidget {
  ClearButton({this.title, this.onPressed});

  final title;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    ThemeData styles = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28.0),
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 100,
      child: CupertinoButton(
          // style: ButtonStyle(),
          color: Colors.white.withOpacity(0.4),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          onPressed: onPressed,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.play_arrow,
                  size: 40.0,
                  color: Colors.black,
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Text(
                    title.toUpperCase(),
                    style: styles.textTheme.headline6,
                  )),
            ],
          )),
    );
  }
}
