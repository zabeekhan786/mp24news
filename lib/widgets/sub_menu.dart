import 'package:flutter/material.dart';
import 'package:wordpress_app/config/wp_config.dart';

import '../pages/category_based_articles.dart';
import '../utils/next_screen.dart';

class SubMenu extends StatefulWidget {
  const SubMenu({Key? key}) : super(key: key);

  @override
  State<SubMenu> createState() => _SubMenuState();
}

class _SubMenuState extends State<SubMenu> {
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 50,
      width: double.infinity,
      child: ListView.builder(
          itemCount: WpConfig.subMenuData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return menuItem(context, index);
          }),
    );
  }

  Widget menuItem(BuildContext context, int id) {
    return InkWell(
      onTap: (() {
        setState(() {
          selected = id;
        });
        nextScreen(
            context,
            CategoryBasedArticles(
                categoryName: WpConfig.subMenuData[id]['name'],
                categoryId: WpConfig.subMenuData[id]['id']));
      }),
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            WpConfig.subMenuData[id]['name'],
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selected == id ? Colors.white : Colors.black),
          ),
        ),
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Theme.of(context).primaryColor),
            color:
                selected == id ? Theme.of(context).primaryColor : Colors.white),
      ),
    );
  }
}
