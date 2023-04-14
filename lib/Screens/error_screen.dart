import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "Assets/Images/no_internet1.png",
            fit: BoxFit.fill,
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.16,
              left: MediaQuery.of(context).size.width * 0.08,
              right: MediaQuery.of(context).size.width * .6,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 13),
                      blurRadius: 25,
                      color: Colors.black.withOpacity(0.17))
                ]),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "RETRY",
                    style:
                        (TextStyle(color: Color.fromARGB(255, 42, 136, 153))),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
