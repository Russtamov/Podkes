import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFF252836), // Figma'daki renk kodunu buraya ekledik
          hintText: 'Search',
          hintStyle: TextStyle(
              color: Colors
                  .white70), 
          prefixIcon: Icon(Icons.search, color: Colors.white70),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
        style: TextStyle(color: Colors.white), 
      ),
    );
  }
}
