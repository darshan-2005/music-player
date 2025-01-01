
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomIcon{

  final IconData  selected, unselected;

  BottomIcon({ required this.selected , required this.unselected});
}

List<BottomIcon> botomIcons = [
  
  BottomIcon(
    selected: Icons.home_filled,
    unselected: Icons.home_outlined
  ),
  BottomIcon(
    selected: CupertinoIcons.heart_fill,
    unselected: CupertinoIcons.heart,
  ),
  BottomIcon(
    selected: CupertinoIcons.cart_fill,
    unselected:CupertinoIcons.cart,
  ),
  BottomIcon(
    selected: Icons.person,
    unselected: Icons.person_outline_outlined,
  ),




];