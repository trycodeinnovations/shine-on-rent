import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/jewellaryget.dart';

class Customerhome extends StatelessWidget {
  const Customerhome({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cute_background.png'), // Add a cute background
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First row with two categories: Wedding & Engagement
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCuteCategoryButton(
                      context,
                      title: "WEDDING",
                      imagePath: 'assets/images/jewe.jpg',
                      onPressed: () async {
                        jewellarydata.clear();
                        await jeweget('Wedding');
                        Navigator.pushNamed(context, "jewwllaryitem");
                      },
                      mediaqry: mediaqry,
                    ),
                    const SizedBox(width: 12),
                    _buildCuteCategoryButton(
                      context,
                      title: "ENGAGEMENT",
                      imagePath: 'assets/images/jew7.jpg',
                      onPressed: () async {
                        jewellarydata.clear();
                        await jeweget('Engagement');
                        Navigator.pushNamed(context, "jewwllaryitem");
                      },
                      mediaqry: mediaqry,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Haldi category button
                _buildCuteCategoryButton(
                  context,
                  title: "HALDI",
                  imagePath: 'assets/images/haldi4.jpg',
                  onPressed: () async {
                    jewellarydata.clear();
                    await jeweget('Haldi');
                    Navigator.pushNamed(context, "jewwllaryitem");
                  },
                  mediaqry: mediaqry,
                  widthFactor: 0.75, // Haldi button is smaller than the others
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to create cute category buttons
  Widget _buildCuteCategoryButton(BuildContext context, {
    required String title,
    required String imagePath,
    required VoidCallback onPressed,
    required Size mediaqry,
    double widthFactor = 0.5,
  }) {
    return Container(
      height: 220,
      width: mediaqry.width * widthFactor - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // Rounded corners for a softer look
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 4), // Shadow effect to make buttons pop
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'CuteFont', // Add a playful/cute font
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
