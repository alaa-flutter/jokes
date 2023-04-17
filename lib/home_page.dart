import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var jokes = [
    {
      "question": "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      "question": "What's a pencil with two erasers called?",
      "answer": "Pointless"
    },
    {
      "question": "Why is the calendar always scared?",
      "answer": "Because it's days are numbered"
    },
    {
      "question": "Why did the computer go to the doctor?",
      "answer": "Because it had a virus!"
    },
    {
      "question": "Why did the smartphone break up with its girlfriend? ",
      "answer": "Because it couldn't find a connection!"
    },
    {
      "question": "Why did the robot go on a diet?",
      "answer": "Because it wanted to reduce its megabytes!"
    },
    {
      "question": "Why did the programmer quit his job?",
      "answer": "He didn't get arrays!"
    },
    {
      "question": "Why did the laptop go to bed early?",
      "answer": "So it could catch some sleep bytes!"
    },
    {
      "question": " Why did the computer cross the road?",
      "answer": "To get to the other site!"
    },
    {
      "question": "What do you call a group of hackers who love math?",
      "answer": "Al-ge-brains!"
    },
    {
      "question": "What do you call a computer that sings? ",
      "answer": "A Dell-ightful machine!"
    },
    {"question": "What do you call a fish with no eye", "answer": "Fsh"},
  ];
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              jokes[index]["question"] ?? '',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 48),
            Text(
              jokes[index]["answer"] ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.deepOrange,
                  onPressed: () {
                    setState(() {
                     if(index == 0){
                       index = jokes.length - 1;
                     }else{
                       index--;
                     }

                    });
                  },
                  child: const Icon(Icons.arrow_back_ios_outlined),
                ),
                const SizedBox(
                  width: 25,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.deepOrange,
                  onPressed: () {
                    setState(() {
                      if(index == jokes.length - 1){
                        index = 0;
                      }else{
                        index++;
                      }
                    });
                  },
                  child: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
