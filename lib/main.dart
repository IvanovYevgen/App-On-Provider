import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'expose_page.dart';
import 'list_of_images.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Package Provider demo',
      home: ChangeNotifierProvider(
        create: (_) => MyList(),
        child: ExposePage(),
      ),
    );
  }
}
