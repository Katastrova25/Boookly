import 'package:flutter/material.dart';

class splash_body extends StatefulWidget {
  const splash_body({super.key});

  @override
  State<splash_body> createState() => _splash_bodyState();
}

class _splash_bodyState extends State<splash_body>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  late Animation<Offset> scaleAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    animation = Tween<Offset>(begin: const Offset(7, 0), end: const Offset(0, 0))
        .animate(animationController);
    scaleAnimation = Tween<Offset>(begin: const Offset(0, 7), end: const Offset(0, 0))
        .animate(animationController);
    (() {
      setState(() {});
    });
    animationController.forward();
    goforward();
    
  }

  goforward() {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, 's1');
    });
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SlideTransition(
            position: animation,
            child: const Text(
              "Think Before You Speak",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 280,
          height: 80,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Logo.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SlideTransition(
            position: scaleAnimation,
            child: const Text(
              " Read Before You Think",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
      ]),
    );
  }
}
