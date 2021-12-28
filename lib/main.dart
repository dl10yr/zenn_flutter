import 'package:flutter/material.dart';
import 'package:zenn_flutter/page/bottom_navigation_bar_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: BottomNavigationBarView(),
    ),
  );
}
