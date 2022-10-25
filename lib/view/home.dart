import 'package:copyd/utli/emoticon_rating.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: const Color(0xff277ebe),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blue[400],
          unselectedItemColor: Colors.blue[200],
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'DashBoard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera'),
          ],
        ),
        backgroundColor: const Color(0xff277ebe),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // greating row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hello Nirajan!',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              DateFormat('d - MMMM - y').format(time),
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                              color: Colors.white,
                              iconSize: 20,
                              onPressed: () {},
                              icon: const Icon(Icons.notifications)),
                        )
                      ],
                    ),
                    // search bar row
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            EmotIconRating(
                                emoticon: Icon(
                              Icons.sentiment_very_satisfied,
                              size: 20,
                            )),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Excellent',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            EmotIconRating(
                              emoticon: Icon(
                                Icons.sentiment_satisfied,
                                size: 20,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Fine',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            EmotIconRating(
                                emoticon: Icon(
                              Icons.sentiment_dissatisfied,
                              size: 20,
                            )),
                            SizedBox(height: 5.0),
                            Text(
                              'Well',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            EmotIconRating(
                                emoticon: Icon(
                              Icons.sentiment_very_dissatisfied,
                              size: 20,
                            )),
                            SizedBox(height: 5.0),
                            Text(
                              'Badly',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                //  top container inside the padding is closed!
              ),
            ],
          ),
        ),
      ),
    );
  }
}
