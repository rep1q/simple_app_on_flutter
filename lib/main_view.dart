import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({
    super.key,
  });

  @override
  State<MainView> createState() => Buttons();
}


class Buttons extends State<MainView> {
var count = 0;

void plusBtnPress(){
  setState(() {
    if(count<10){
      ++count;
    }
  });
}

void minusBtnPress(){
  setState(() {
    if(count > 0){
      --count;
    }
  });
}

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
            const Text("Count of +/-",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed:  count < 10 ? () => plusBtnPress() : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          disabledBackgroundColor: Colors.grey,
                          foregroundColor: Colors.red,
                          disabledForegroundColor: Colors.black,
                          minimumSize: Size(75, 75),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),child: const Text("+")),

                      Text(
                          "$count",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                      ),

                    ElevatedButton(onPressed:  count > 0 ? () => minusBtnPress() : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          disabledBackgroundColor: Colors.grey,
                          foregroundColor: Colors.red,
                          disabledForegroundColor: Colors.black,
                          minimumSize: Size(75, 75),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),child: const Text("-")),
                  ],
                ),
              ],
        ),
      ),
    );
  }
}
