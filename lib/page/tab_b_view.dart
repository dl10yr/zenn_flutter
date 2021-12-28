import 'package:flutter/material.dart';

class TabBView extends StatelessWidget {
  const TabBView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('タブB'),
      ),
      body: const Center(
        child: Text('タブB'),
      ),
    );
  }
}
