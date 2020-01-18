import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodwallfy/constants/colors.dart';
import 'package:foodwallfy/pages/home/colorArguments.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ColorArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: -(MediaQuery.of(context).size.height * .4),
                  left: -(MediaQuery.of(context).size.width * .3),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .977125,
                    width: (MediaQuery.of(context).size.width - 22) * .98941176,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors:
                            FzColors().getListColors(["#F6356F", "#FF5F50"]),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  right: 12.0,
                  top: 6.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors:
                            FzColors().getListColors(["#F6356F", "#FF5F50"]),
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .3,
                  left: MediaQuery.of(context).size.height * .03,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    child: SpinKitThreeBounce(
                      size: 50.0,
                      itemBuilder: (_, i) => DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: FzColors()
                                .getListColors(["#F6356F", "#FF5F50"]),
                            tileMode: TileMode.clamp,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.0, 1.0],
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .41,
                  left: MediaQuery.of(context).size.height * .03,
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 40) / 1.5,
                    height: 3.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors:
                            FzColors().getListColors(["#F6356F", "#FF5F50"]),
                        tileMode: TileMode.clamp,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, 1.0],
                      ),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .45,
                  left: MediaQuery.of(context).size.height * .03,
                  child: Container(
                    height: 128.0,
                    width: 187.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      gradient: LinearGradient(
                        colors:
                            FzColors().getListColors(["#F6356F", "#FF5F50"]),
                        tileMode: TileMode.clamp,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, 1.0],
                      ),
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: FzColors()
                              .hexToColor(
                                "#F6356F",
                              )
                              .withOpacity(.8),
                          blurRadius: 5.0,
                          spreadRadius: .4,
                          offset: Offset(.7, 3.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .64,
                  left: MediaQuery.of(context).size.height * .03,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    child: SpinKitCircle(
                      size: 60.0,
                      itemBuilder: (_, i) => DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: FzColors()
                                .getListColors(["#F6356F", "#FF5F50"]),
                            tileMode: TileMode.clamp,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.0, 1.0],
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .76,
                  left: MediaQuery.of(context).size.height * .02,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 12,
                    child: Text(
                      'PARTH',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 37.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 5.0,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: FzColors()
                                .getListColors(["#F6356F", "#FF5F50"]),
                          ).createShader(
                            Rect.fromLTRB(
                              200.0,
                              0.0,
                              100.0,
                              0.0,
                            ),
                            // textDirection: TextDirection.ltr,
                          ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
