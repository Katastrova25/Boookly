import 'package:flutter/material.dart';

class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 300,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 48,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Center(
                  child: Text(
                    "19.99",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Expanded(
            child: Container(
              width: 48,
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xffEF8262),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Center(
                  child: Text("Free Preview",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold))),
            ),
          )
        ],
      ),
    );
  }
}
