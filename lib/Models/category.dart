import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    //const before constructor here makes the object immutable (the values of cant change after instantiation)
    @required this.id,
    this.color = Colors.orange,
    @required this.title,
  });
}
