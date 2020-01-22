import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodwallfy/constants/colors.dart';

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
                  Center(
                    child: SpinKitCircle(
                      size: 100.0,
                      itemBuilder: (context, index) => DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: FzColors().getListColors(
                              ["#FDFBFB", "#EBEDEE"],
                            ),
                            tileMode: TileMode.clamp,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: FzColors().getLoaderStops(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              imageUrl: widget.imgPath,
              imageBuilder: (context, image) => Stack(
                children: <Widget>[
                  Image(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    image: image,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * .03,
                    left: MediaQuery.of(context).size.width * .08,
                    right: MediaQuery.of(context).size.width * .27,
                    child: MaterialButton(
                      splashColor: Colors.grey[100],
                      color: Colors.white.withOpacity(.47),
                      textColor: Colors.white,
                      elevation: 5.0,
                      height: 40.0,
                      // minWidth: 50.0,
                      child: Text("Download"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * .03,
                    // right: MediaQuery.of(context).size.width * .2,
                    left: MediaQuery.of(context).size.width * .72,
                    child: IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * .03,
                    // right: MediaQuery.of(context).size.width * .2,
                    left: MediaQuery.of(context).size.width * .84,
                    child: IconButton(
                      icon: Icon(Icons.wallpaper),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      
                    ),
                  ),
                ],
              ),
              fit: BoxFit.cover,
              alignment: Alignment.center,
              fadeInCurve: Curves.bounceIn,
              fadeInDuration: Duration(milliseconds: 1000),
            ),
          ),
        ),
      );
}
