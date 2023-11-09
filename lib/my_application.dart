import 'package:flutter/material.dart';

import 'main_view.dart';

class Application extends StatelessWidget {
  const Application({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainView(),
    );
  }
}
