import 'package:flutter/material.dart';

class TabCView extends StatelessWidget {
  const TabCView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('タブC'),
      ),
      body: const Center(
        child: Text('タブC'),
      ),
    );
  }
}
