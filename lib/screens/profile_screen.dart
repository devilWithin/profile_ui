import 'package:flutter/material.dart';
import 'package:profile_ui/data/dummy_data.dart';
import 'package:profile_ui/styles/colors.dart';
import 'package:profile_ui/styles/FlutterIcons.dart';
import 'package:profile_ui/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
          opacity: 0.6,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.blueGrey,
          size: 50,
          opacity: 1,
        ),
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black,
        currentIndex: index,
        onTap: (int selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.teal,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_hospital_rounded,
                color: Colors.teal,
              ),
              label: 'Diagnose'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.teal,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.user,
              color: Colors.teal,
            ),
            label: 'My Plants',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz_outlined,
              color: Colors.teal,
            ),
            label: 'More',
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Color.fromRGBO(239, 243, 244, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        gradient: LinearGradient(
                          colors: [
                            yellowishColor,
                            greyColor,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        gradient: LinearGradient(
                          colors: [
                            greenishColor,
                            greyColor,
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(31),
                            border: Border.all(color: brownColor, width: 1.5),
                          ),
                          child: CircleAvatar(
                            child: Icon(
                              MyFlutterApp.user,
                              color: Colors.grey[400],
                              size: 45,
                            ),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Mostafa Medhat',
                          style: TextStyle(
                            color: brownColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        customIcon(
                          icon: Icons.settings,
                          size: 30,
                          gradient: LinearGradient(
                            colors: [
                              Colors.green,
                              Colors.greenAccent,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.65, 1],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Joined PictureThis for 1 day',
                      style: TextStyle(color: Colors.grey[500], fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Statistics',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 250,
            width: double.infinity,
            child: GridView.builder(
                padding: EdgeInsets.all(0.0),
                physics: NeverScrollableScrollPhysics(),
                itemCount: cards.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1.0,
                  crossAxisSpacing: 1.0,
                  childAspectRatio: 4 / 2,
                ),
                itemBuilder: (context, index) => cards[index]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Gifts for Premium',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.33,
              // padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customGift(
                    image: 'assets/images/1.jpg',
                    priceText: 'Value at \$50.00',
                    ticketsText: '0 Tickets Left',
                    buttonText: 'Unlock now',
                  ),
                  customGift(
                    image: 'assets/images/2.jpg',
                    priceText: 'Value at \$19.99',
                    ticketsText: '1 Book Unlocked',
                    buttonText: 'Read',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
