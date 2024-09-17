import 'package:flutter/material.dart';
import 'package:movie/app_theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Stack(
            children: [
              Image.asset(
                'assets/image/background.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                right: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/image/Image.png',
                        width: 100,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16), // Adjusted spacing
                    // Use Expanded or Flexible to avoid overflow
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dora and the lost city of gold',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 8),
                          Text(
                            '2019 PG-13 2h 7m',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Play icon positioned correctly
              Positioned(
                top: 100,
                left: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.play_circle,
                    color: Colors.black,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
          // New Releases section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'New Releases',
              style: TextStyle(
                color: AppTheme.gray,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            color: AppTheme.gray,
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset('assets/image/nagros.png'),
                Image.asset('assets/image/spiderman.png'),
                Image.asset('assets/image/Annabelle.png'),
                Image.asset('assets/image/toyStory.png'),
              ],
            ),
          ),
          // Recommended section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppTheme.gray,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 200,
                color: AppTheme.gray,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/image/spiderman.png'),
                    Image.asset('assets/image/spiderman.png'),
                    Image.asset('assets/image/spiderman.png'),
                    Image.asset('assets/image/spiderman.png'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
