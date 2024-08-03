import 'package:flutter/material.dart';
import 'package:podkes_demo/feature/view/now_play_page/now_play_page.dart';

class TrendingSection extends StatelessWidget {
  final List<Map<String, String>> trendingItems = [
    {
      'title': 'The missing 96 percent of the universe',
      'subtitle': 'Claire Malone',
      'image': 'assets/images/trending1.png'
    },
    {
      'title': 'How Dolly Parton led me to an epiphany',
      'subtitle': 'Abumenyang',
      'image': 'assets/images/trending2.png'
    },
    {
      'title': 'The missing 96 percent of the universe',
      'subtitle': 'Tir McDohl',
      'image': 'assets/images/trending3.png'
    },
    {
      'title': 'Ngobam with Denny Caknan',
      'subtitle': 'Denny Kulon',
      'image': 'assets/images/trending4.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Trending',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: trendingItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final item = trendingItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NowPlay(
                      title: item['title']!,
                      subtitle: item['subtitle']!,
                      image: item['image']!,
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        item['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    item['title']!,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item['subtitle']!,
                    style: const TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
