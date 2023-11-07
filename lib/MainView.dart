import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => Buttons();
}

class Buttons extends State<MainView> {
var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("First App On Flutter"),
      ),
      body: Center(
        widthFactor: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count of +/-"),
            SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    count++;
                  });
                }, icon: Icon(Icons.plus_one_outlined), color: Colors.deepOrange,
                ),
                Container(
                  child: Text("$count"),
                ),
                IconButton(onPressed: (){
                  setState(() {
                    count--;
                  });
                }, icon: Icon(Icons.exposure_minus_1), color: Colors.deepOrange,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
