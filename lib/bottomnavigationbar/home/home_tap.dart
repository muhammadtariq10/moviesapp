import 'package:flutter/material.dart';
import 'package:movies/app_theme.dart';
import 'package:movies/shared/movie_card.dart';
import 'package:movies/shared/movie_releases_cart.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  child: Image.asset(
                    'assets/images/background.png',
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(
                      start: MediaQuery.of(context).size.width * 0.38),
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 14),
                      Text(
                        'Dora and the Lost City of Gold',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppTheme.primary,
                            ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '2019 PG-13  2h 7m',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppTheme.primary,
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100,
              left: 20,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/imagetesting.png',
                      width: 130,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsetsDirectional.only(start: 16, top: 10),
              color: AppTheme.graysecond,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Releases',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => const MovieReleasesCart(
                        imageName: 'assets/images/Annabelle.png',
                      ),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: AppTheme.graysecond,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => const MovieCard(
                    title: 'Deadpool 2',
                    rating: 7.7,
                    imageName: 'assets/images/spiderman.png',
                  ),
                  itemCount: 10,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
