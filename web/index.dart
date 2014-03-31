import 'dart:html';
import 'dart:math';
import 'dart:async';

import 'package:autohero/view.dart';
import 'package:autohero/game.dart';


Button createMenuButton(String name, View show) {
  var l = new Button();
  l.text = name;
  l.width = 120;
  l.size = 40;
  menuPanel.addChild(l);
  l.onClick.listen((e) {
    showPanel(show);
  });

}

void main() {
  createMenuButton("戰鬥", battlePanel);
  createMenuButton("隊伍", teamPanel);
  createMenuButton("地圖", sitePanel);
  createMenuButton("道具", itemPanel);
  createMenuButton("研究", itemPanel);
  createMenuButton("日記", itemPanel);
  createMenuButton("系統", itemPanel);
  //    var l2 = new Button();
  var r = Worrier();
  var r2 = Mage();

  addRole(r);
  addRole(r2);

  start();
}
