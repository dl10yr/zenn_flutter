import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zenn_flutter/state/bottom_navigation_bar_state.dart';

class BottomNavigationBarNotifier
    extends StateNotifier<BottomNavigationBarState> {
  BottomNavigationBarNotifier() : super(BottomNavigationBarState());

  void select(BottomTabItem newItem) {
    state = state.copyWith(viewItem: newItem);
  }
}

final bottomNavigationBarProvider = StateNotifierProvider<
    BottomNavigationBarNotifier, BottomNavigationBarState>((_) {
  BottomNavigationBarNotifier notify = BottomNavigationBarNotifier();
  return notify;
});
