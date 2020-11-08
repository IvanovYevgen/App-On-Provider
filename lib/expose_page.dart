import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_of_images.dart';

class ExposePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myList = Provider.of<MyList>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Package Provider demo'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: Image.network(
                myList.links[myList.imagesNumber],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<MyList>().nextImage(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
