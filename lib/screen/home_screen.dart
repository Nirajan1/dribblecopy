import 'package:copyd/utli/emoticon_rating.dart';
import 'package:copyd/widgets/excercise_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
// import 'package:flutter_emoji/flutter_emoji.dart';// emojis not used till now

class HomeViewScreen extends StatelessWidget {
  const HomeViewScreen({
    Key? key,
    required this.time,
  }) : super(key: key);

  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          DateFormat('dd MMMM, y')
                              .format(time), //gives current date/time/year
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade200,
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
                  height: 50,
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
            height: 460,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Icon(
                    Icons.linear_scale_sharp,
                    color: Colors.grey.shade400,
                  ),
                ),
                // container title
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
                //  container title ends here!
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: 350,
                    decoration: const BoxDecoration(),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const ExcercisesListView(
                          title: 'Speaking skills',
                          subtTitle: '17 Excercise',
                          iconColor: Colors.white,
                          displayIcon: Icon(Icons.favorite),
                          displayColor: Colors.orange,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const ExcercisesListView(
                          title: 'Writing skills',
                          subtTitle: '7 Excercise',
                          iconColor: Colors.white,
                          displayIcon: Icon(Icons.person),
                          displayColor: Colors.blue,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        ExcercisesListView(
                          title: 'Reading speed',
                          subtTitle: '6 Excercise',
                          iconColor: Colors.white,
                          displayIcon: const Icon(Icons.book_online_outlined),
                          displayColor: Colors.pink.shade400,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        ExcercisesListView(
                          title: 'Learning speed',
                          subtTitle: '14 Excercise',
                          iconColor: Colors.white,
                          displayIcon:
                              const Icon(Icons.directions_run_outlined),
                          displayColor: Colors.green.shade300,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
