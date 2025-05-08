import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tech_accessories_app/core/utils/image.dart';
import 'package:tech_accessories_app/core/utils/size_extension.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
   final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;
  final List<String> list = [c1, c2, c3]; //imag path
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: list.length,
            carouselController: _controller,
            itemBuilder: (context, index, realIndex) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Apply radius here
                  child: Image.asset(
                    list[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              );
            },

            options: CarouselOptions(
              height: 320,

              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              reverse: false,
              aspectRatio: 16 / 9,
              autoPlayAnimationDuration: Duration(milliseconds: 700),
              autoPlayCurve: Curves.easeIn,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          2.vSpace,
          AnimatedSmoothIndicator(
            activeIndex: _currentIndex,
            count: list.length,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.grey.shade500,
              dotHeight: 10,
              dotWidth: 10,
              expansionFactor: 3,
            ),
          ),
        
      ],
    );
  }
}