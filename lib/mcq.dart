import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:quiz_app/result.dart';

class MCQ extends StatefulWidget {
  final List<Map<String, Object>> questions;
  final int pageIndex; // Use pageIndex instead of questionIndex
  final Color color;
  List<bool> answerSelectedList;

  MCQ({
    required this.questions,
    required this.pageIndex, // Change questionIndex to pageIndex
    required this.color,
    required this.answerSelectedList,
  });

  @override
  State<MCQ> createState() => _MCQState();
}

class _MCQState extends State<MCQ> {
  final controller = LiquidController();
  int totalScore = 0;
  // List<bool> answerSelectedList =
  //     []; // List to track if each answer has been selected

  // @override
  // void initState() {
  //   super.initState();
  //   // Initialize the answerSelectedList with 'false' for each answer
  //   answerSelectedList = List.generate(
  //     (widget.questions[widget.pageIndex]['answers']
  //             as List<Map<String, Object>>)
  //         .length,
  //     (_) => false,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: widget.color,
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.questions[widget.pageIndex]['questionText'] as String,
              style: GoogleFonts.kalam(
                fontSize: 25,
              ),
            ),
            ...(widget.questions[widget.pageIndex]['answers']
                    as List<Map<String, Object>>)
                .asMap() // Use asMap to get the index of each answer
                .map((index, answer) {
                  final isSelected = widget.answerSelectedList[
                      index]; // Use the local list to track selection

                  return MapEntry(
                    index,
                    GestureDetector(
                      onTap: () {
                        if (!isSelected) {
                          setState(() {
                            widget.answerSelectedList = List.generate(
                              widget.answerSelectedList.length,
                              (_) => false,
                            );
                            widget.answerSelectedList[index] =
                                true; // Update the selected answer index
                            totalScore = totalScore +
                                int.parse(answer['score']?.toString() ?? '0');
                          });
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isSelected
                                ? Colors.green
                                : Colors.brown.shade900,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            answer['text'] as String,
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              color: isSelected ? Colors.green : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                })
                .values
                .toList(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(
                      totalScore: totalScore,
                    ),
                  ),
                );
              },
              child: Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 22, 22, 22),
                  border: Border.all(color: Colors.brown.shade900),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
