import 'package:flutter/foundation.dart';

class MyList with ChangeNotifier {
  int imagesNumber = 0;

  List<String> links = [
    'https://images.unsplash.com/photo-1543366749-4dad497ea0a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1522390108011-5f8667fd551d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1591753115350-8902397bf3cb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1523297736436-356615162cc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1527627864265-f337b988928a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ];

  void nextImage() {
    if (imagesNumber < links.length - 1) {
      imagesNumber++;
      notifyListeners();
    } else {
      imagesNumber = 0;
      notifyListeners();
    }
  }
}
