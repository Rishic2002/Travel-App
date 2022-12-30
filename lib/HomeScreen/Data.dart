// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:test2/Cities/Chennai/Chennai.dart';
import 'package:test2/Cities/Delhi/Delhi.dart';
import 'package:test2/Cities/Lucknow/Lucknow.dart';
import 'package:test2/Cities/Mumbai/Mumbai.dart';

import '../Cities/Hyderabad/Hyderabad.dart';
import '../Cities/Jaipur/Jaipur.dart';
import '../Cities/Kolkata/Kolkata.dart';


List<Map> india = [
    {
    'image':
        'https://images.pexels.com/photos/1007427/pexels-photo-1007427.jpeg?auto=compress&cs=tinysrgb&w=800',
    'name': 'Delhi',

  },
  {
    'image':
        'https://images.pexels.com/photos/6501507/pexels-photo-6501507.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'name': 'Lucknow',
  },
  {
    'image':
        'https://e1.pxfuel.com/desktop-wallpaper/292/438/desktop-wallpaper-chennai-central-station-chennai-city.jpg',
    'name': 'Chennai',
  },
  {
    'image':
        'https://images.pexels.com/photos/12092934/pexels-photo-12092934.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'name': 'Hyderabad',
  },
  {
    'image':
        'https://images.unsplash.com/photo-1630494378404-097499a0fea1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    'name': 'Kolkata',
  },
  {
    'image':
        'https://images.unsplash.com/photo-1614082813462-d763a404cbb7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    'name': 'Mumbai',
  },
  {
    'image':
        'https://images.unsplash.com/photo-1524230507669-5ff97982bb5e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=728&q=80',
    'name': 'Jaipur',
  },

];

List<Widget> route = 
  [const Delhi(), const Lucknow(), const Chennai(), const Hyderabad(), const Kolkata(), const Mumbai(), const Jaipur()];