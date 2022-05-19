import 'package:flutter/material.dart';
import 'package:wordpress_app/models/article.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wordpress_app/services/bookmark_service.dart';

class LikeIcon extends StatelessWidget {
  const LikeIcon({
    Key? key,
    required this.bookmarkedList,
    required this.article,
    required this.scaffoldKey,
    required this.iconSize,
    this.iconColor,
    this.normalIconColor
  }) : super(key: key);

  final Box bookmarkedList;
  final Article? article;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final double iconSize;
  final Color? iconColor;
  final Color? normalIconColor;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bookmarkedList.listenable(),
      builder: (context, dynamic value, Widget? child) {
        return


          Row(
            children: [

              IconButton(
                iconSize: iconSize,
                padding: EdgeInsets.all(0),
                constraints: BoxConstraints(),
                alignment: Alignment.centerRight,

                icon: bookmarkedList.keys.contains(article!.id)
                    ? Icon(Icons.thumb_up, color: iconColor == null? Colors.pinkAccent : iconColor)
                    : Icon(Icons.thumb_up_alt_outlined, color: normalIconColor == null ? Colors.grey : normalIconColor),
                onPressed: () {
                  BookmarkService().handleBookmarkIconPressed(article!, scaffoldKey);
                }),
              SizedBox(
                width: 6,
              ),

              bookmarkedList.keys.contains(article!.id)
              ?Text(
                 'liked',
                style:
                TextStyle(fontSize: 13, fontWeight: FontWeight.w400,color: Colors.blue),
              )
              :Text(
                    'like',
                style:
                TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              )
              ,
            ],
          );
      },
    );
  }
}