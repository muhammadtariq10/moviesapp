import 'package:flutter/material.dart';

import 'details_of_movie.dart';
import '../../tabs/category/category_grid.dart';
import '../../tabs/category/category_model.dart';

class BrowseTab extends StatelessWidget {
  BrowseTab({super.key});

  static const routeName = 'browse';

  final List<CategoryModel> categories = List.generate(
    100,
    (index) => CategoryModel(
      name: 'Action',
      image: 'assets/images/action.png',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Browse Category ',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (_, index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DetailsOfMovie(),
                            ),
                          );
                        },
                        child: CategoryGrid(
                          category: categories[index],
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
