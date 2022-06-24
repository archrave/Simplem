import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileItems {
  static final List<Map<String, Object>> profileItems = [
    {
      'title': 'Progress',
      'content':
          'Keep track of your patients’ progress and modify their plan as required.',
      'icon': const Icon(
        FontAwesomeIcons.chartLine,
        color: Color(0xff349A4E),
      ),
      'color': const Color(0xffB1E1A5),
    },
    {
      'title': 'Settings',
      'content':
          'Keep track of your patients’ progress and modify their plan as required.',
      'icon': const Icon(
        Icons.settings_outlined,
        color: Color(0xff3634A3),
      ),
      'color': const Color(0xff6FABFF),
    },
    {
      'title': 'Contact',
      'content':
          'Keep track of your patients’ progress and modify their plan as required.',
      'icon': const Icon(
        Icons.call_outlined,
        color: Color(0xffFF6600),
      ),
      'color': const Color(0xffFFA561),
    },
    {
      'title': 'FAQs',
      'content':
          'Keep track of your patients’ progress and modify their plan as required.',
      'icon': const Icon(
        FontAwesomeIcons.question,
        color: Color(0xffD22779),
      ),
      'color': const Color(0xffFF95C5),
    },
  ];
}
