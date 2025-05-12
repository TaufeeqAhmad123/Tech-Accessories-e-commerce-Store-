
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tech_accessories_app/core/utils/const.dart';
import 'package:tech_accessories_app/core/utils/image.dart';
import 'package:tech_accessories_app/components/appGradientWidget.dart';
import 'package:tech_accessories_app/core/utils/size_extension.dart';
import 'package:tech_accessories_app/views/detail_view/widget/product_infoWidget.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final bool isUp = false;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(
          vsync: this,
          duration: const Duration(seconds: 3),
          reverseDuration: Duration(milliseconds: 2200),
        )..addStatusListener((AnimationStatus status) {
          if (status == AnimationStatus.completed) _controller.reverse();
          if (status == AnimationStatus.dismissed) _controller.forward();
        });
    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
  


  @override
  Widget build(BuildContext context) {
   
    return Stack(
      children: [
      //  Appgradientwidget(child: SizedBox(),),
        Scaffold(
          backgroundColor: Colors.transparent,
          body 
            : SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
                child: Column(
                  children: [
                    _detailAppBar(context),
                    4.vSpace,
                    SizedBox(
                      height: 35.h,
                      child: Hero(
                        tag: widget.product.imagePath,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, -0.1),
                            end: const Offset(0, 0.1),
                          ).animate(_controller),
                          
                          child: Image.asset(widget.product.imagePath),
                        ),
                      ),
                    ),
                    10.vSpace,
                   ProductInfowidget(product: widget.product,)
                  ],
                ),
              ),
            ),
          
        ),
      ],
    );
  }

  Row _detailAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white.withOpacity(0.6),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20.sp,
            ),
          ),
        ),
        SvgPicture.asset(
          threeDotIcon,
          color: Colors.white.withOpacity(0.6),
          width: 7.w,
        ),
      ],
    );
  }
}
