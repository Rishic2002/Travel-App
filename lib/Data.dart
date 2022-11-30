// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:test2/Cities/Chennai.dart';
import 'package:test2/Cities/Delhi.dart';
import 'package:test2/Cities/Lucknow.dart';
import 'package:test2/Cities/Mumbai.dart';

import 'Cities/Hyderabad.dart';
import 'Cities/Jaipur.dart';
import 'Cities/Kolkata.dart';


List<Map> paintings = [
    {
    'image':
        '/Users/rishic2002/Desktop/DESKTOP/Apps/test2/assets/delhi.jpg',
    'name': 'Delhi',

  },
  {
    'image':
        '/Users/rishic2002/Desktop/DESKTOP/Apps/test2/assets/lucknow.jpeg',
    'name': 'Lucknow',
  },
  {
    'image':
        '/Users/rishic2002/Desktop/DESKTOP/Apps/test2/assets/chennai.jpg',
    'name': 'Chennai',
  },
  {
    'image':
        '/Users/rishic2002/Desktop/DESKTOP/Apps/test2/assets/Hyderabad.jpg',
    'name': 'Hyderabad',
  },
  {
    'image':
        '/Users/rishic2002/Desktop/DESKTOP/Apps/test2/assets/kolkata.jpg',
    'name': 'Kolkata',
  },
  {
    'image':
        '/Users/rishic2002/Desktop/DESKTOP/Apps/test2/assets/Mumbai.jpg',
    'name': 'Mumbai',
  },
  {
    'image':
        '/Users/rishic2002/Desktop/DESKTOP/Apps/test2/assets/Jaipur.jpg',
    'name': 'Jaipur',
  },

];
List<Widget> route = 
  [const Delhi(), const Lucknow(), const Chennai(), const Hyderabad(), const Kolkata(), const Jaipur()];