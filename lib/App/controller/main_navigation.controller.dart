import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';
part 'main_navigation.controller.g.dart';

class MainNavigationController = _MainNavigationControllerBase
    with _$MainNavigationController;

abstract class _MainNavigationControllerBase with Store implements Disposable {
  final _pageViewController = PageController();

  get pageViewController => _pageViewController;

  get currentPage => _pageViewController?.page?.round() ?? 0;

//Controla a cor do icone conforme sua posição na bottomNavbar
  Color setIconColor({int position}) =>
      currentPage == position ? Color(0xff223066) : Colors.grey;

  @override
  void dispose() {
    _pageViewController.dispose();
  }
}
