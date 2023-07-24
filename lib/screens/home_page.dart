import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/mcq.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = LiquidController();

  var questionIndex = 0;

  List<MCQ> pages = [];

  final questions = const [
    {
      'questionText': 'What is the capital of India?',
      'answers': [
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Delhi', 'score': 1},
        {'text': 'Chandigarh', 'score': 0},
        {'text': 'Bangalore', 'score': 0},
      ],
    },
    {
      'questionText': 'How many hours are there in a day',
      'answers': [
        {'text': '48', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '24', 'score': 1},
        {'text': '16', 'score': 0},
      ],
    },
    {
      'questionText': 'Name the National bird of India',
      'answers': [
        {'text': 'Pigeon', 'score': 0},
        {'text': 'Sparrow', 'score': 0},
        {'text': 'Humming Bird', 'score': 0},
        {'text': 'Peacock', 'score': 1},
      ],
    },
    {
      'questionText': 'Which animal lays eggs',
      'answers': [
        {'text': 'Dog', 'score': 0},
        {'text': 'Cat', 'score': 0},
        {'text': 'Duck', 'score': 1},
        {'text': 'Sheep', 'score': 0},
      ],
    },
    {
      'questionText': 'What is Earth’s only natural satellite',
      'answers': [
        {'text': 'Sun', 'score': 0},
        {'text': 'Moon', 'score': 1},
        {'text': 'Mars', 'score': 0},
        {'text': 'Venus', 'score': 0},
      ],
    },
    {
      'questionText': 'Which shape has more corners',
      'answers': [
        {'text': 'Hexagon', 'score': 1},
        {'text': 'Pentagon', 'score': 0},
        {'text': 'Triangle', 'score': 0},
        {'text': 'Quadrilateral', 'score': 0},
      ],
    },
    {
      'questionText': 'How much is 4 x 4',
      'answers': [
        {'text': '4', 'score': 0},
        {'text': '8', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '16', 'score': 1},
      ],
    },
  ];

  List<bool> answerSelectedList =
      []; // List to track if each answer has been selected

  @override
  void initState() {
    super.initState();
    // Initialize the answerSelectedList with 'false' for each answer
    questions.forEach((element) {
      answerSelectedList = List.generate(
        (questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .length,
        (_) => false,
      );
    });

    pages = [
      MCQ(
        questions: questions,
        // questionIndex: questionIndex,
        pageIndex: 0,
        color: const Color.fromARGB(255, 189, 229, 227),
        answerSelectedList: answerSelectedList,
      ),
      MCQ(
        questions: questions,
        // questionIndex: questionIndex + 1,
        pageIndex: 1,
        color: const Color.fromARGB(255, 161, 122, 235),
        answerSelectedList: answerSelectedList,
      ),
      MCQ(
        questions: questions,
        // questionIndex: questionIndex + 2,
        pageIndex: 2,
        color: const Color.fromARGB(255, 216, 158, 81),
        answerSelectedList: answerSelectedList,
      ),
      MCQ(
        questions: questions,
        // questionIndex: questionIndex + 3,
        pageIndex: 3,
        color: const Color.fromARGB(255, 227, 107, 107),
        answerSelectedList: answerSelectedList,
      ),
      MCQ(
        questions: questions,
        // questionIndex: questionIndex + 4,
        pageIndex: 4,
        color: const Color.fromARGB(255, 189, 229, 227),
        answerSelectedList: answerSelectedList,
      ),
      MCQ(
        questions: questions,
        // questionIndex: questionIndex + 5,
        pageIndex: 5,
        color: const Color.fromARGB(255, 161, 122, 235),
        answerSelectedList: answerSelectedList,
      ),
      MCQ(
        questions: questions,
        // questionIndex: questionIndex + 6,
        pageIndex: 6,
        color: const Color.fromARGB(255, 216, 158, 81),
        answerSelectedList: answerSelectedList,
      ),
    ];
  }

  void onPageChange(int page) {
    setState(() {
      // Reset the selected index and answerSelectedList for the new page
      pages.forEach((mcq) {
        // mcq.resetSelection(); // Call the resetSelection method from MCQ
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        liquidController: controller,
        fullTransitionValue: 600,
        preferDragFromRevealedArea: false,
        //initialPage: 1,
        slideIconWidget: const Icon(Icons.arrow_back_ios, size: 20),
        positionSlideIcon: 0.7, //position on vertical axis(0 to 1)
        enableLoop: false,
        waveType: WaveType.liquidReveal,
        ignoreUserGestureWhileAnimating: false,
        disableUserGesture: false,
        enableSideReveal: true,
        onPageChangeCallback: onPageChange,
        // slidePercentCallback: (slidePercentHorizontal, slidePercentVertical) {
        //   print('slidePercentCallBack called');
        // },
        currentUpdateTypeCallback: (updateType) {
          print(updateType);
        },
      ),
    );
  }
}
