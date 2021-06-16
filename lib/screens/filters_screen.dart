import 'package:flutter/material.dart';
import 'package:max_meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('your filters'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('filters'),
      ),
    );
  }
}
