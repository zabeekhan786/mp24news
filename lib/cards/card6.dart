import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:share/share.dart';
import 'package:wordpress_app/models/article.dart';
import 'package:wordpress_app/models/constants.dart';
import 'package:wordpress_app/services/app_service.dart';
import 'package:wordpress_app/utils/cached_image.dart';
import 'package:wordpress_app/utils/next_screen.dart';
import 'package:wordpress_app/widgets/bookmark_icon.dart';
import 'package:wordpress_app/widgets/video_icon.dart';

import '../widgets/like_icon.dart';

//small card with left side image
class Card6 extends StatelessWidget {
  const Card6(
      {Key? key,
      required this.article,
      required this.heroTag,
      required this.scaffoldKey})
      : super(key: key);
  final Article article;
  final String heroTag;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final bookmarkedList = Hive.box(Constants.bookmarkTag);
    final _screen =  MediaQuery.of(context).size;

    return InkWell(
      child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(5),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Theme.of(context).shadowColor,
                    blurRadius: 10,
                    offset: Offset(0, 3))
              ]),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        child: Hero(
                            tag: heroTag,
                            child:
                                CustomCacheImage(imageUrl: article.image, radius: 5)),
                      ),

                      VideoIcon(tags: article.tags, iconSize: 50,)
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 130,
                      padding: EdgeInsets.only(top: 0, bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppService.getNormalText(article.title!),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            article.category!.toUpperCase(),
                            style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w500),
                          ),

                       /*   Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                CupertinoIcons.time,
                                size: 16,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(article.timeAgo!,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          Theme.of(context).colorScheme.secondary)),
                              Spacer(),
                              BookmarkIcon(
                                bookmarkedList: bookmarkedList,
                                article: article,
                                iconSize: 18,
                                scaffoldKey: scaffoldKey,
                              )
                            ],
                          ),*/


                        ],
                      ),

                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [


                  // Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    width: _screen.width * 0.50,
                    child: LikeIcon(
                      bookmarkedList: bookmarkedList,
                      article: article,
                      iconSize: 18,
                      scaffoldKey: scaffoldKey,
                      iconColor: Colors.blue,
                    ),
                  ),
                  VerticalDivider(width: 0.5),

                  Container(
                    width: _screen.width * 0.25,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.share,
                              size: 18, color: Colors.grey[900]),
                          onPressed: () => _handleShare(article),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        InkWell(
                          onTap: () => _handleShare(article),
                          child:Text(
                            'share',
                            style:
                            TextStyle(fontSize: 13, fontWeight: FontWeight.w400),

                          ),
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),),
      onTap: () => navigateToDetailsScreen(context, article, heroTag)
    );
  }
}
Future _handleShare(Article article) async {
  Share.share(article.link!);
}