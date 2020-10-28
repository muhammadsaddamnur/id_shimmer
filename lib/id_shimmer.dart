library id_shimmer;

import 'dart:async';

import 'package:flutter/material.dart';

enum IdShimerType { type1, type2, type3 }

class IdShimmerLine extends StatefulWidget {
  final IdShimerType type;
  final bool thrice;
  IdShimmerLine({Key key, this.type = IdShimerType.type1, this.thrice = false})
      : super(key: key);
  @override
  _IdShimmerLineState createState() => _IdShimmerLineState();
}

class _IdShimmerLineState extends State<IdShimmerLine> {
  Timer timer;
  double opacity = 1.0;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
        setState(() {
          if (opacity == 1.0) {
            opacity = 0.5;
          } else {
            opacity = 1.0;
          }
        });
      });
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.thrice ? 3 : 1,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(milliseconds: 500),
              child: Container(
                height: 20,
                decoration: BoxDecoration(
                    color: Color(0xffEBEBEB).withOpacity(index == 0
                        ? 1.0
                        : index == 1
                            ? 0.6
                            : 0.3),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            widget.type == IdShimerType.type1
                ? SizedBox()
                : widget.type == IdShimerType.type2
                    ? SizedBox(
                        height: 5,
                      )
                    : SizedBox(
                        height: 10,
                      ),
            widget.type == IdShimerType.type1
                ? SizedBox()
                : AnimatedOpacity(
                    opacity: opacity,
                    duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width / 1.3,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB).withOpacity(index == 0
                              ? 1.0
                              : index == 1
                                  ? 0.6
                                  : 0.3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
            widget.type == IdShimerType.type1
                ? SizedBox()
                : SizedBox(
                    height: 5,
                  ),
            widget.type == IdShimerType.type1 ||
                    widget.type == IdShimerType.type2
                ? SizedBox()
                : AnimatedOpacity(
                    opacity: opacity,
                    duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB).withOpacity(index == 0
                              ? 1.0
                              : index == 1
                                  ? 0.6
                                  : 0.3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
            widget.thrice
                ? SizedBox(
                    height: 20,
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}

class IdShimmerGrid extends StatefulWidget {
  final IdShimerType type;
  final bool thrice;
  IdShimmerGrid({Key key, this.type = IdShimerType.type1, this.thrice = false})
      : super(key: key);
  @override
  _IdShimmerGridState createState() => _IdShimmerGridState();
}

class _IdShimmerGridState extends State<IdShimmerGrid> {
  Timer timer;
  double opacity = 1.0;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
        setState(() {
          if (opacity == 1.0) {
            opacity = 0.5;
          } else {
            opacity = 1.0;
          }
        });
      });
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.thrice ? 3 : 1,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(milliseconds: 500),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: Color(0xffEBEBEB).withOpacity(index == 0
                            ? 1.0
                            : index == 1
                                ? 0.6
                                : 0.3),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: Color(0xffEBEBEB).withOpacity(index == 0
                            ? 1.0
                            : index == 1
                                ? 0.6
                                : 0.3),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
            widget.type == IdShimerType.type1
                ? SizedBox()
                : widget.type == IdShimerType.type2
                    ? SizedBox(
                        height: 5,
                      )
                    : SizedBox(
                        height: 10,
                      ),
            widget.type == IdShimerType.type1
                ? SizedBox()
                : AnimatedOpacity(
                    opacity: opacity,
                    duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB).withOpacity(index == 0
                              ? 1.0
                              : index == 1
                                  ? 0.6
                                  : 0.3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
            widget.type == IdShimerType.type1
                ? SizedBox()
                : SizedBox(
                    height: 5,
                  ),
            widget.type == IdShimerType.type1 ||
                    widget.type == IdShimerType.type2
                ? SizedBox()
                : AnimatedOpacity(
                    opacity: opacity,
                    duration: Duration(milliseconds: 500),
                    child: Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB).withOpacity(index == 0
                              ? 1.0
                              : index == 1
                                  ? 0.6
                                  : 0.3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
            widget.thrice
                ? SizedBox(
                    height: 20,
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
