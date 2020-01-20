import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class FullImage extends StatefulWidget {
  final String imgPath;
  final String lastImgPath;
  FullImage(this.imgPath, this.lastImgPath);

  @override
  _FullImageState createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ClipRRect(
            child: CachedNetworkImage(
              placeholderFadeInDuration: Duration(milliseconds: 40),
              placeholder: (c, url) => Stack(
                children: <Widget>[
                  CachedNetworkImage(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    imageUrl: widget.lastImgPath,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    fadeInCurve: Curves.bounceIn,
                    fadeInDuration: Duration(milliseconds: 1000),
                  ),
                  BackdropFilter(
                    filter: new ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
              imageUrl: widget.imgPath,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              fadeInCurve: Curves.bounceIn,
              fadeInDuration: Duration(milliseconds: 1000),
            ),
          ),
        ),
      );
}
