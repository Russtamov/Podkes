import 'package:flutter/material.dart';
import 'package:podkes_demo/feature/view/explore/explore_page.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double imageHeight = size.height * 0.4;
    final double imageWidth = size.width * 0.6;
    final double textFontSize = size.width * 0.1;
    final double descriptionFontSize = size.width * 0.04;
    final double dotSize = size.width * 0.02;

    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/images/get_start.png',
                    height: imageHeight,
                    width: imageWidth,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Text(
                  'Podkes',
                  style: TextStyle(
                    fontSize: textFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: descriptionFontSize,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      width: dotSize,
                      height: dotSize,
                      decoration: BoxDecoration(
                        color: index == 0 ? Colors.white : Colors.white24,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
                SizedBox(height: size.height * 0.06),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExplorePage(context)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                        size.width * 0.18,
                        size.height *
                            0.08), // Buton boyutları burada değiştirildi
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF1C1B2D),
                    size: size.width * 0.06,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
