
import 'package:flutter/widgets.dart';

import '../Chennai/Chennai.dart';
import '../Delhi/Delhi.dart';
import '../Hyderabad/Hyderabad.dart';
import '../Jaipur/Jaipur.dart';
import '../Kolkata/Kolkata.dart';
import '../Lucknow/Lucknow.dart';
import '../Mumbai/Mumbai.dart';

List<Widget> route = 
  [const Delhi(),
   const Lucknow(), 
   const Chennai(), 
   const Hyderabad(),
   const Kolkata(),
   const Mumbai(),
   const Jaipur()];