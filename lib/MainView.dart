import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => Buttons();
}


class Buttons extends State<MainView> {
var count = 0;
bool flag_plus = false;
bool flag_minus = false;

void plusBtnPress(){
  setState(() {
    count++;
    if(count>=10){
      flag_plus = true;
    }
    else{
      flag_minus = false;
    }
  });
}

void minusBtnPress(){
  setState(() {
    count--;
    if(count <= 0){
      flag_minus = true;
    }
    else{
      flag_plus = false;
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
                    ElevatedButton(onPressed:  flag_plus ? null: () => plusBtnPress()
                        ,style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          disabledBackgroundColor: Colors.grey,
                          foregroundColor: Colors.red,
                          disabledForegroundColor: Colors.black,
                          minimumSize: Size(75, 75),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),child: const Text("+")),
                    Container(
                      child: Text(
                          "$count",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                    ElevatedButton(onPressed:  flag_minus ? null: () => minusBtnPress()
                        ,style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          disabledBackgroundColor: Colors.grey,
                          foregroundColor: Colors.red,
                          disabledForegroundColor: Colors.black,
                          minimumSize: Size(75, 75),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
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
