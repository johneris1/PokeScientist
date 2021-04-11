import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

BottomNavigationBarItem customBottomNavItem({
  @required String label,
  @required Color iconColor,
  @required String iconPath,
  int alerts = 0,
  double marginLeft = 0,
  double marginRight = 0,
}) =>
    BottomNavigationBarItem(
        label: label,
        icon: Container(
          margin: EdgeInsets.only(left: marginLeft, right: marginRight),
          width: 40,
          height: 40,
          child: Stack(children: [
            iconSVG(imagesPath: iconPath, color: iconColor),
            Positioned(
              top: 16,
              left: 12,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                child: alerts > 0
                    ? Container(
                        height: 18,
                        width: 18,
                        color: Color(0xff223066),
                        child: Center(
                          child: Text('$alerts',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11)),
                        ),
                      )
                    : Container(),
              ),
            ),
          ]),
        ));

BottomNavigationBarItem customNavItemStatic({
  @required String label,
  @required Color iconColor,
  @required String iconPath,
}) =>
    BottomNavigationBarItem(
        label: label,
        icon: Padding(
            padding: const EdgeInsets.only(bottom: 13.0),
            child: iconSVG(color: iconColor, imagesPath: iconPath)));

Widget iconSVG({@required String imagesPath, @required Color color}) =>
    SvgPicture.asset(imagesPath, color: color, width: 24, height: 24);

class ImagesPath {
  static String get iconBottomalert => 'assets/icons/icon_bottom_alert.svg';
  static String get iconBottomHome => 'assets/icons/icon_bottom_home.svg';
  static String get iconBottomMessage => 'assets/icons/icon_bottom_msgm.svg';
  static String get iconBottomUser => 'assets/icons/icon_bottom_user.svg';
  static String get iconBottomPesquisa => 'assets/icons/lupa.svg';
  static String get iconBottomquiz => 'assets/icons/exam.svg';
  static String get iconBottomAjuda => 'assets/icons/ajuda.svg';
}
