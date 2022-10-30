import 'package:copyd/utli/emoticon_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
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
            //main column inside scroll area//
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  //column inside padding //
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
                              DateFormat('MMMM - dd - y')
                                  .format(time), //gives current date/time/year
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
                    ), //greating row ends here//
                    // search bar row
                    const SizedBox(
                      height: 20.0,
                    ),

                    Container(
                      //static searchbar design //
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          //searchbar to be changed more dynamic
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
                    //static rating bar design//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'How do you feel?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        EmotIconRating(
                          emoticon: Icon(
                            Icons.sentiment_very_satisfied,
                            size: 20,
                          ),
                          title: 'Excellent',
                        ),
                        EmotIconRating(
                          emoticon: Icon(
                            Icons.sentiment_satisfied,
                            size: 20,
                          ),
                          title: 'Fine',
                        ),
                        EmotIconRating(
                          emoticon: Icon(
                            Icons.sentiment_dissatisfied,
                            size: 20,
                          ),
                          title: 'Well',
                        ),
                        EmotIconRating(
                          emoticon: Icon(
                            Icons.sentiment_very_dissatisfied,
                            size: 20,
                          ),
                          title: 'Bad',
                        ),
                      ],
                    ),

                    //static rating bar design ends here//
                  ],
                ),
                //  top container inside the padding is closed!
              ),
              // white container bellow the padding with edged curve
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: Get.size.width,
                height: 329,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Icon(Icons.linear_scale_sharp),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Excercises',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Container(
                        height: 90,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Center(
                          child: ListTile(
                            // leading: ,
                            title: const Text("Speaking skils"),
                            subtitle: const Text("16 Excercises"),
                            leading: const Icon(Icons.favorite),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
