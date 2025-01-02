import 'package:dribble_mental/utils/emoticons.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Column(children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     children: [
                       const Text(
                         "Hi Nikhil !",
                         style: TextStyle(
                             fontSize: 24,
                             fontWeight: FontWeight.bold,
                             color: Colors.white),
                       ),
                       const SizedBox(height: 10),
                       Text(
                         "12-Jan-2024",
                         style: TextStyle(color: Colors.blue[200]),
                       )
                     ],
                   ),
                   Container(
                     decoration: BoxDecoration(
                         color: Colors.blue[500],
                         borderRadius: BorderRadius.circular(25)),
                     padding: const EdgeInsets.all(12),
                     child: const Icon(
                       Icons.notifications,
                       color: Colors.white,
                     ),
                   ),
                 ],
               ),
               const SizedBox(
                 height: 10,
               ),
               //search
               Container(
                 decoration: BoxDecoration(
                     color: Colors.blue[500],
                     borderRadius: BorderRadius.circular(12)),
                 padding: const EdgeInsets.all(10),
                 child: const Row(
                   children: [
                     Icon(
                       Icons.search,
                       color: Colors.white,
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Text(
                       "Search",
                       style: TextStyle(color: Colors.white),
                     )
                   ],
                 ),
               ),
               const SizedBox(
                 height: 10,
               ),
               //how do you feel
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                     "How do you feel?",
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.white),
                   ),
                   Icon(
                     Icons.more_horiz,
                     color: Colors.white,
                   )
                 ],
               ),
               const SizedBox(
                 height: 10,
               ),
               //emogis
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Emoticons(
                     emoticon: "😃",
                     data: "good",
                   ),
                   Emoticons(
                     emoticon: "🙂",
                     data: "fine",
                   ),
                   Emoticons(
                     emoticon: "🥳",
                     data: "excellent",
                   ),
                   Emoticons(
                     emoticon: "☹️",
                     data: "bad",
                   ),
                 ],
               ),
             ],),
           ),
            const SizedBox(height: 10,),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: Container(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
