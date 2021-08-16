import 'package:flutter/material.dart';
import 'package:profile_ui/styles/FlutterIcons.dart';
import 'package:profile_ui/widgets/widgets.dart';

List<Widget> cards = [
  customCard(
    icon: Icons.search,
    number: '1',
    descriptionText: 'Collected',
  ),
  customCard(
    icon: MyFlutterApp.user,
    number: '5',
    descriptionText: 'Grown',
  ),
  customCard(
    icon: Icons.featured_play_list,
    number: '6',
    descriptionText: 'Book Unlocked',
  ),
  customCard(
    icon: Icons.local_hospital_outlined,
    number: '0',
    descriptionText: 'Diagnosed',
  ),
];
