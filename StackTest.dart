import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StackTest extends StatelessWidget {
  const StackTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Stack"),
              IconButton(onPressed: () {}, icon: Icon(Icons.stacked_bar_chart))
            ],
          ),
        ),
      ),
      body: InteractiveViewer(
          maxScale: 5,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue.shade100, Colors.blue.shade400])),
              ),
              Container(
                width: 400,
                height: 600,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.orange.shade700,
                  Colors.orange.shade400
                ])),
              ),
              Container(
                width: 200,
                height: 400,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.white, Colors.white54])),
              ),
              GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Clicked",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.black,
                      textColor: Colors.red,
                      fontSize: 16.0);
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.green.shade700,
                    Colors.green.shade400
                  ])),
                  child: CircularProgressIndicator(
                    color: Colors.grey,
                    strokeWidth: 8.0,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
