import 'package:flutter/material.dart';
import 'package:zenn_flutter/page/tab_a_view.dart';
import 'package:zenn_flutter/page/tab_b_view.dart';
import 'package:zenn_flutter/page/tab_c_view.dart';
import 'package:zenn_flutter/state/bottom_navigation_bar_state.dart';
import 'package:zenn_flutter/provider/bottom_navigation_bar_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomNavigationBarView extends HookConsumerWidget {
  BottomNavigationBarView({Key? key}) : super(key: key);

  final _views = [
    const TabAView(),
    const TabBView(),
    const TabCView(),
  ];
  List<BottomTabItem> get _items => BottomTabItem.values;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomTabState = ref.watch(bottomNavigationBarProvider);
    final bottomTabNotifier = ref.watch(bottomNavigationBarProvider.notifier);
    final int currentIndex = _items.indexOf(bottomTabState.viewItem);
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'TabA',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'TabB',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'TabC',
            ),
          ],
          onTap: (int selectIndex) {
            bottomTabNotifier.select(_items[selectIndex]);
          },
          currentIndex: currentIndex,
        ),
        body: _views[currentIndex],
      ),
    );
  }
}
