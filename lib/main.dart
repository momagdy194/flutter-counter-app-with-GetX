import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  CounterController _controller=Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              builder: (controller) => Text(
                "increment  ${controller.count}",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: () {
                    _controller.increment();
                  },
                  child: Icon(Icons.add),
                ),
                RaisedButton(
                  onPressed: () {_controller.decrement();},
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(Home2());
              },
              child: Text('Go to Anther  Page'),
            )
          ],
        ),
      ),
    );
  }
}



class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("home 2"),),);
  }
}


/*
Reactive Programing

-getX
-Obx


onUpdate(
_getBuilder
 */
