import 'package:flutter/material.dart';

class TabAView extends StatelessWidget {
  const TabAView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('タブA'),
      ),
      body: const Center(
        child: Text('タブA'),
      ),
    );
  }
}
