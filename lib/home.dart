import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class home extends StatefulWidget {
  static const String routeName= 'Home';
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset('assets/images/applogo.png', width: 40,height: 40),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Moody",
                style:  GoogleFonts.kadwa(
                color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
        actions: [
    Padding(
    padding: const EdgeInsets.only(left: 9.0,right: 20, top: 30),
    child: badges.Badge(
    badgeStyle: badges.BadgeStyle(
    badgeColor: Colors.red,
    padding: EdgeInsets.all(5),
    ),
    position: badges.BadgePosition.topEnd(top: 0, end: 3),
    badgeContent: SizedBox.shrink(),
    child: Icon(Icons.notifications_none_outlined, size: 30,
      color: Colors.grey[800],),
    ),
    ),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromRGBO(2, 122, 72, 1),
        unselectedItemColor: Color.fromRGBO(102, 112, 133, 1),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,weight: 900),
              label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined),
              label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined,),
              label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Icons.person,),
              label: "user"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

              RichText(text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Hello,", style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: 24,
                      color: Color.fromRGBO(55, 27, 52, 1),
                    ),
                    ),
                    TextSpan(
                      text: "  Sara Rose", style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color:Color.fromRGBO(55, 27, 52, 1),
                    ),
                    ),
                  ]
              )),
            SizedBox( height: 18,),
            Text("How are you feeling today?", style:
            GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(55, 27, 52, 1),
            )),
                   Padding(
                     padding: const EdgeInsets.all(18.0),
                     child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
         children: [
       CircleAvatar(
                  radius: 30,
               backgroundImage: AssetImage('assets/images/happyy.png'),
          ),
             SizedBox(height: 8),
        Text('Love', style: TextStyle(fontSize: 16)),
         ],
        ),
         SizedBox(width: 30),
         Column(
           children: [
          CircleAvatar(
                radius: 30,
                      backgroundImage: AssetImage('assets/images/Cooll.png'),
    ),
           SizedBox(height: 8),
         Text('Cool', style: TextStyle(fontSize: 16)),
       ],
        ),
       SizedBox(width: 30),
     Column(
            children: [
          CircleAvatar(
                     radius: 30,
         backgroundImage: AssetImage('assets/images/smile.png'),
    ),
           SizedBox(height: 8),
         Text('Happy', style: TextStyle(fontSize: 16)),
       ],
      ),
        SizedBox(width: 30),
          Column(
          children: [
           CircleAvatar(
      radius: 30,
       backgroundImage: AssetImage('assets/images/sadd.png'),
      ),
          SizedBox(height: 8),
            Text('Sad', style: TextStyle(fontSize: 16)),
           ],
       ),
       ],
     ),
                   ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text("Feature",
                    style: GoogleFonts.inter(color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),),
                  Spacer(),
                  Text("see more > ",
                    style: GoogleFonts.inter(color: Color.fromRGBO(2, 122, 72, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),),

                ],
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  width: 326,
                 height: 186,
                // width: MediaQuery.of(context).size.width,
                     //height: MediaQuery.of(context).size.height,
                    margin: EdgeInsets.symmetric(horizontal: 28.0),
                     decoration: BoxDecoration(
                       color: Color.fromRGBO(236, 253, 243, 1), // Grey background color
                      borderRadius: BorderRadius.circular(8.0),
                        ),


                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
    //SizedBox(width: 16.0),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.only(left: 15.0, top: 25.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
    'Positive vibes',
    style: GoogleFonts.inter(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
      color: Color.fromRGBO(52, 64, 84, 1)
    )
    ),
    SizedBox(height: 15,width: 30,),
    Text(
    'Boost your mood with positive vibes',
    style: GoogleFonts.inter(
    fontSize: 16.0,
    color: Colors.black,
    )
    ),
Spacer(),
Padding(
  padding: const EdgeInsets.only(top: 15, bottom: 17,right: 10),
  child:   Row(

    mainAxisSize: MainAxisSize.min,

    children: [

      IconButton(onPressed: (){}, icon:

      Icon(Icons.play_circle_fill,color: Color.fromRGBO(50, 213, 131, 1), ),),

      SizedBox(width: 0,),

      Text("10 mins"),



    ],

  ),
),
    ],

    ),
    ),
    ),


                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Walking the Dog.png',
                                width: 103,
                                height: 90,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

    ],

    ),

    ),

                Align(
    alignment: Alignment.center,
    child: SmoothPageIndicator(
    controller: controller,
    count:  3,
    effect:   JumpingDotEffect(
      dotColor: Colors.grey.withOpacity(0.4), // Inactive dot color
      activeDotColor: Color.fromRGBO(152, 162, 179, 1), // Active dot color
      dotHeight: 8.0, // Make the dots bigger
      dotWidth: 8.0, // Make the dots bigger
      verticalOffset: 0.0, // Adjust vertical position if needed
      spacing: 7.0, // Adjust space between dots

    ),
    ),
    ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text("Exercise",
                    style: GoogleFonts.inter(color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),),
                  Spacer(),
                  Text("see more > ",
                    style: GoogleFonts.inter(color: Color.fromRGBO(2, 122, 72, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),),

                ],
              ),
            ),
    Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Container(
    width: 151,
    height: 56,
    color: Color.fromRGBO(249, 245, 255, 1),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'assets/images/relax.png',
        width: 24,
        height: 24,
        color: Color.fromRGBO(182, 146, 246, 1),
    ),
    SizedBox(width: 8),
    Text(
    'Relaxation',
    style: GoogleFonts.inter(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,),
    ],
    ),
    ),

    Container(
    width: 151,
    height: 56,
    color: Color.fromRGBO(253, 242, 250, 1),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'assets/images/Meditiation.png',
        width: 24,
        height: 24,
        color: Color.fromRGBO(250, 167, 224, 1),
      ),
    SizedBox(width: 8),
    Text(
    'Meditation',
    style: GoogleFonts.inter(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,),
    ],
    ),
    ),
          ],
        ),
      ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 151,
                    height: 56,
                    color: Color.fromRGBO(255, 250, 245, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/breath.png',
                          width: 24,
                          height: 24,
                          color: Color.fromRGBO(254, 178, 115, 1),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Relaxation',
                          style: GoogleFonts.inter(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,),
                      ],
                    ),
                  ),

                  Container(
                    width: 151,
                    height: 56,
                    color: Color.fromRGBO(240, 249, 255, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Yoga.png',
                          width: 24,
                          height: 24,
                          color: Color.fromRGBO(124, 212, 253, 1),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Yoga',
                          style: GoogleFonts.inter(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    ], ), ), );
  }
}
