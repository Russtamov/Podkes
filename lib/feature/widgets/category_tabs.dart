import 'package:flutter/material.dart';

class CategoryTabs extends StatelessWidget {
  final List<String> categories = [
    'All',
    'Life',
    'Comedy',
    'Tech',
    'New',
    'Trend'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Chip(
             
              label: Text(category),
              backgroundColor: Color(0x2F3142),
            ),
          );
        }).toList(),
      ),
    );
  }
}
