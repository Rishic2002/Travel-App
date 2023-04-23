import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/recommended_model.dart';


class SelectedScreen extends StatelessWidget {
  final _pageController = PageController();
  final RecommendedModel recommendedModel;

  SelectedScreen({Key? key, required this.recommendedModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  recommendedModel.images!.length,
                  (int index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                    recommendedModel.images![index]))),
                      )),
            ),
            SafeArea(
              child: Container(
                height: 57.6,
                margin: EdgeInsets.only(top: 28, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 57.6,
                        width: 57.6,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          color: Color(0x080a0928),
                        ),
                        child: Icon(Icons.chevron_left, color: Colors.white),
                        // child: SvgPicture.asset('assets/svg/icon_drawer.svg '),
                      ),
                    ),
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Color(0x080a0928),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      // child: SvgPicture.asset('assets/svg/icon_search.svg '),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 346.8,
                margin: EdgeInsets.only(left: 28.8, bottom: 48, right: 28.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: recommendedModel.images!.length,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Color(0xFF8a8a8a),
                          dotColor: Color(0xFFababab),
                          dotHeight: 4.8,
                          dotWidth: 6,
                          spacing: 4.8),
                    ),
                    // Container(
                    //   child:
                    //   ClipRRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),),),

                    // ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaY: 19.2, sigmaX: 19.2),
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 17,
                                        left: 12,
                                        bottom: 17,
                                        right: 12),
                                    child: Column(
                                      children: [
                                        Text(
                                          recommendedModel.tagLine,
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontFamily: 'Apercu Pro',
                                              fontSize: 42.6,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          recommendedModel.description,
                                          maxLines: 3,
                                          style: TextStyle(
                                              fontFamily: 'Apercu Pro',
                                              fontSize: 19.2,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 48,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Start from',
                                                  style: GoogleFonts.lato(
                                                      fontSize: 16.8,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '\ ₹ ${recommendedModel.price.toString()}',
                                                  style: GoogleFonts.lato(
                                                      fontSize: 21.6,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                            Container(
                                              height: 62.4,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          9.6),
                                                  color: Colors.white),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 28.8, right: 28.8),
                                                  child: Text(
                                                    'Explore Now >>',
                                                    style: GoogleFonts.lato(
                                                        fontSize: 19.2,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(top: 19.2),
                    //   child: Text(
                    //     recommendedModel.tagLine,
                    //     maxLines: 2,
                    //     style: TextStyle(
                    //         fontFamily: 'Apercu Pro',
                    //         fontSize: 42.6,
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.w700),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.only(top: 19.2),
                    //   child: Text(
                    //     recommendedModel.description,
                    //     maxLines: 3,
                    //     style: TextStyle(
                    //         fontFamily: 'Apercu Pro',
                    //         fontSize: 19.2,
                    //         fontWeight: FontWeight.w500,
                    //         color: Colors.white),
                    //   ),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
