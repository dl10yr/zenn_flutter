import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_bar_state.freezed.dart';

enum BottomTabItem { tabA, tabB, tabC }

@freezed
abstract class BottomNavigationBarState with _$BottomNavigationBarState {
  factory BottomNavigationBarState({
    @Default(BottomTabItem.tabA) final BottomTabItem viewItem,
  }) = _BottomNavigationBarState;
}
