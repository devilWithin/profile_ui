import 'package:flutter/material.dart';
import 'package:profile_ui/components/components.dart';
import 'package:profile_ui/styles/colors.dart';

Widget customIcon({
  required IconData icon,
  required double size,
  required Gradient gradient,
}) =>
    GradientIcon(
      icon,
      size,
      gradient,
    );

Widget customCard({
  required IconData icon,
  required String number,
  required String descriptionText,
}) =>
    Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 5),
          customIcon(
            icon: icon,
            size: 30,
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Color.fromRGBO(149, 212, 87, 1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.0, 1],
            ),
          ),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: TextStyle(
                    color: heavyGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                descriptionText,
                style: TextStyle(
                  color: heavyGreen,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Colors.grey,
          )
        ],
      ),
      elevation: 0.0,
    );

Widget customGift({
  required String image,
  required String priceText,
  required String ticketsText,
  required String buttonText,
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Stack(
            children: [
              Container(
                child: ClipRRect(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    width: 140,
                    height: 160,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
              ),
              Positioned(
                top: 10,
                child: Container(
                  child: Text(
                    'GIFT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                        colors: [Colors.deepOrange, Colors.orangeAccent],
                        stops: [0.0, 1],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                  ),
                ),
              )
            ],
            alignment: Alignment.topLeft,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          priceText,
          style: TextStyle(
            color: heavyGreen,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          ticketsText,
          style: TextStyle(
            color: brownColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                Colors.teal,
                Color.fromRGBO(105, 198, 167, 1),
              ],
              stops: [0.0, 1],
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
