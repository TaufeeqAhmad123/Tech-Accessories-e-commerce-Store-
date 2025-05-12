import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tech_accessories_app/core/utils/appStyle.dart';
import 'package:tech_accessories_app/core/utils/const.dart';
import 'package:tech_accessories_app/core/utils/image.dart';
import 'package:tech_accessories_app/core/utils/page_transition.dart';
import 'package:tech_accessories_app/core/utils/size_extension.dart';
import 'package:tech_accessories_app/views/detail_view/detail_screen.dart';
import 'package:tech_accessories_app/views/widget/carouselWidget.dart';
import 'package:tech_accessories_app/components/appGradientWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  final List<String> list = [c1, c2, c3]; //imag path
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInLeft(
              delay: Duration(milliseconds: 500),
              child: const Text(
                'Hi, Ahmad 👋',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            1.vSpace,
            FadeInLeft(
              delay: Duration(milliseconds: 500),
              child: Text(
                'New Accessories !',
                style: headingStyle(
                  context,
                ).copyWith(color: Colors.black, fontSize: 17.5.sp),
              ),
            ),
          ],
        ),
        actions: [
          FlipInY(
            delay: Duration(milliseconds: 500),
            child: CircleAvatar(
              radius: 20.sp,
              backgroundColor: Colors.black87,
              child: SvgPicture.asset(
                searchIcon,
                color: Colors.white,
                height: 3.h,
              ),
            ),
          ),
          4.hSpace,
        ],
      ),
      body: Column(
        children: [
          4.vSpace,

          FadeIn(
            delay: Duration(milliseconds: 500),
            child: CarouselWidget()),
          2.vSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeInLeft(
                  delay: Duration(milliseconds: 500),
                  child: Text('Products', style: headingStyle(context))),
                IconButton(
                  onPressed: () {},
                  icon: FadeInRight(
                    delay: Duration(milliseconds: 500),
                    child: Text(
                      'See all',
                      style: headingStyle(context).copyWith(
                        color: Colors.grey[500],
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          2.vSpace,
          //list View builder
          SizedBox(
            height: 26.h,
            child: ListView.separated(
              itemCount: mainProducts.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var item = mainProducts[index];
                return Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                  child: FadeInRight(
                    delay: Duration(milliseconds: 300 +index* 100),
                    child: GestureDetector(
                      onTap:(){
                         slideTransition(context,DetailScreen(product: item,));
                      },
                      child: Appgradientwidget(
                       padding: EdgeInsets.only(left: 10),
                       margin: EdgeInsets.only(left: 10),
                        borderRadius: 30,
                        height: 30.h,
                        width: 33.w,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              3.vSpace,
                              Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  height: 12.h,
                                  width: 100.w,
                                  child: Hero(
                                    tag: item.imagePath,
                                    child:  Image.asset(item.imagePath)),
                                ),
                              ),
                              Text(
                                item.title,
                                style: subtitleStyle(
                                  context,
                                ).copyWith(color: Colors.grey[400]),
                              ),
                              Text(
                                item.subtitle,
                                style: GoogleFonts.kanit(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                ),
                              ),
                              Text(
                                '\$${item.price}0',
                                style: subtitleStyle(
                                  context,
                                ).copyWith(color: Colors.grey[400]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 0.h,),
            ),
          ),
        ],
      ),
    );
  }
}
