import 'package:flutter/material.dart';

class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {

  bool? ischecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("tristate true"),
            Checkbox(
              value: ischecked,
              activeColor: Colors.orange,
              //tristate: true,
              onChanged: (newBool){
                setState(() {
                  ischecked=newBool;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
