import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget {
  final int totalScore;

  const Result({super.key, required this.totalScore});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 189, 229, 227),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Your Score is",
              style: GoogleFonts.merienda(fontSize: 25),
            ),
            Text(
              widget.totalScore.toString(),
              style: GoogleFonts.merienda(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
