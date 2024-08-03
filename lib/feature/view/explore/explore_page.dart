import 'package:flutter/material.dart';
import 'package:podkes_demo/feature/widgets/bottom_nav_bar.dart';
import 'package:podkes_demo/feature/widgets/category_tabs.dart';
import 'package:podkes_demo/feature/widgets/trending_section.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage(BuildContext context, {super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1D2B),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Podkes',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1F1D2B),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            CategoryTabs(),
            TrendingSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
