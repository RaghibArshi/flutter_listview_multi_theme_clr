import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_view_flutter/ImageSlider.dart';
import 'package:web_view_flutter/signup_screen.dart';
class FanWallReviewList extends StatefulWidget {
  const FanWallReviewList({Key? key}) : super(key: key);

  @override
  State<FanWallReviewList> createState() => _FanWallReviewListState();
}

class _FanWallReviewListState extends State<FanWallReviewList> {

  Color nameTextColor = Colors.black;
  Color smallTextColor = Colors.grey;
  Color iconColor = Colors.black;
  Color containerColor = Colors.white;
  Color cardColor = Colors.white;
  Color appbarTextColor = Colors.black;

  List bigImgList = ['img1.jpg', 'img2.jpg', 'img3.jpg', 'img4.jpg', 'img5.jpg', 'img6.jpg', 'img7.jpg', 'img9.jpg', 'img10.jpg', 'img11.jpg' ];
  List profileImgList = ['pp1.png', 'pp2.png', 'pp3.png', 'pp4.png', 'pp5.png', 'pp6.png', 'pp7.png', 'pp8.png', 'pp9.png', 'pp10.png' ];
  List profileName = ['Jake Lucas', 'Angela Zab', 'Sushi Uzaid', 'Lacy Ivan', 'Amaar Abraham', 'Natasha Morthi', 'Alliana Obllisca', 'Tommy Murray',
    'Adam Michal', 'Honey Pandey'];
  List messageList = [
    'There iss no limit to what you can do in 2023! Tomorrow, is the first blank page of a 365-page book. Write a good one!',
    'Life is like the ocean, it goes up and down · The ocean stirs the heart, inspires the imagination and brings eternal joy to the soul. May this year bring new happiness, new goals, new achievements, and a lot of new inspirations on your life.',
    'If you meet me on an empty road with nothing in your hands and pockets, the shops are closed and that day is my birthday, what gift would you give to me?',
    'May this year bring new happiness, new goals, new achievements, and a lot of new inspirations on your life.',
    'Every end marks a new beginning. Keep your spirits and determination unshaken, and you shall always walk the glory road',
    'Out with the old, in with the new! · May this new year be full of adventure and growth. · Hoping you shimmy shake your way into 2023!',
    'Winter is the time for comfort, for good food and warmth, for the touch of a friendly hand and for a talk beside the fire: it is time for home',
    'New year celebrations are a grand affair. People celebrate this day by going out with their friends, family and relatives',
    'Sometimes life is too hard to be alone and sometimes life is too good to be alone',
    'I wish to send you my heartfelt greetings and wish you and your family all the best that this journey can offer. Life is like the ocean, it goes up and down · The ocean stirs the heart, inspires the imagination and brings eternal joy to the soul',
  ];

  void handleClick(String value) {
    switch (value) {
      case 'light':
        setState(() {
          nameTextColor = Colors.black;
          smallTextColor = Colors.grey;
          iconColor = Colors.black;
          containerColor = Colors.white;
          cardColor = Colors.white;
          appbarTextColor = Colors.black;
        });
        break;
      case 'dark':
        setState(() {
          nameTextColor = Colors.white;
          smallTextColor = Colors.grey;
          iconColor = Colors.white;
          containerColor = Colors.blueGrey;
          cardColor = Colors.black;
          appbarTextColor = Colors.white;
        });
        break;
      case 'green':
        setState(() {
          nameTextColor = Colors.black;
          smallTextColor = Colors.black;
          iconColor = Colors.black;
          containerColor = Colors.green;
          cardColor = Color(0Xff99ff99);
          appbarTextColor = Colors.black;
        });
        break;
      case 'grey':
        setState(() {
          nameTextColor = Colors.black;
          smallTextColor = Colors.black;
          iconColor = Colors.black;
          containerColor = Color(0xff616161);
          cardColor = Color(0Xff9E9E9E);
          appbarTextColor = Colors.black;
        });
        break;
      case 'purple':
        setState(() {
          nameTextColor = Colors.white;
          smallTextColor = Colors.white;
          iconColor = Colors.white;
          containerColor = Color(0xff9C27B0);
          cardColor = Color(0Xff7B1FA2);
          appbarTextColor = Colors.white;
        });
        break;
      case 'orange':
        setState(() {
          nameTextColor = Colors.black;
          smallTextColor = Colors.black;
          iconColor = Colors.black;
          containerColor = Colors.deepOrange;
          cardColor = Colors.orange;
          appbarTextColor = Colors.black;
        });
        break;
      case 'red':
        setState(() {
          nameTextColor = Colors.black;
          smallTextColor = Colors.black;
          iconColor = Colors.black;
          containerColor = Color(0xffD32F2F);
          cardColor = Color(0xffF44336);
          appbarTextColor = Colors.black;
        });
        break;
      case 'blue':
        setState(() {
          nameTextColor = Colors.black;
          smallTextColor = Colors.black;
          iconColor = Colors.black;
          containerColor = Color(0xff1976D2);
          cardColor = Color(0xff2196F3);
          appbarTextColor = Colors.black;
        });
        break;
      case 'teal':
        setState(() {
          nameTextColor = Colors.black;
          smallTextColor = Colors.black;
          iconColor = Colors.black;
          containerColor = Color(0xff00796B);
          cardColor = Color(0xff009688);
          appbarTextColor = Colors.black;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: cardColor,
        appBar: AppBar(
          title: Text(
              'Fan Walls', style: TextStyle(color: appbarTextColor),
            // title,
          ),
          actions: <Widget>[
            PopupMenuButton<String>(
              icon: Icon(Icons.lightbulb, color: appbarTextColor,),
              onSelected: handleClick,
              itemBuilder: (BuildContext context) {
                return {'light', 'dark', 'green', 'grey', 'purple', 'orange', 'red', 'blue', 'teal'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
          centerTitle: true,
          leading: InkWell(
              onTap: () {},
              child: Icon(Icons.arrow_back_ios, color: appbarTextColor,)),
          backgroundColor: cardColor,
          elevation: 10,
          toolbarHeight: 60,
        ),
        body: commonBackCard(
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder:
                        (BuildContext context, int index) {
                      return const SizedBox(
                        height: 15,
                      );
                    },
                    itemCount: 10,
                    // itemCount: totalPunchList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return PostDetailScreen(image: 'assets/'+bigImgList[index], name: profileName[index],
                              message: messageList[index], profile: 'assets/'+profileImgList[index],);
                          }));
                        },
                        child: Card(
                            color: cardColor,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0, right: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.brown.shade800,
                                        backgroundImage: AssetImage('assets/'+profileImgList[index]),
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                          profileName[index],
                                          style: TextStyle(color: nameTextColor, fontSize: 18, fontWeight: FontWeight.bold)
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 15,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                          'assets/'+bigImgList[index]
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(messageList[index], style: TextStyle(color: smallTextColor, fontSize: 15,)
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.calendar_today_rounded, color: iconColor,),
                                      SizedBox(width: 5,),
                                      Text('01/01/2023', style: TextStyle(color: smallTextColor, fontSize: 14),)
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          context,
          containerColor,
        ));
  }
}

Widget commonBackCard(
    Widget childWidget, BuildContext context, Color backgroundClr) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: backgroundClr,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50))),
    child: childWidget,
  );
}
