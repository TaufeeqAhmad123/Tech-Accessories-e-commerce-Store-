import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tech_accessories_app/components/appGradientWidget.dart';
import 'package:tech_accessories_app/core/utils/appStyle.dart';
import 'package:tech_accessories_app/core/utils/const.dart';
import 'package:tech_accessories_app/core/utils/page_transition.dart';
import 'package:tech_accessories_app/core/utils/size_extension.dart';
import 'package:tech_accessories_app/provider/explore_provider.dart';
import 'package:tech_accessories_app/views/detail_view/detail_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExploreProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              5.vSpace,
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 40,
                  child: Consumer<ExploreProvider>(
                    builder: (context, provider, child) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: provider.categories.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              provider.changeIndex(index);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: provider.selectedCategoryIndex == index
                                    ? Colors.amber[200]
                                    : Colors.grey[300],

                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                provider.categories[index],
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              5.vSpace,
              SizedBox(
                height: 350.h,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: provider.getFilterProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 0,
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    var item = provider.getFilterProducts[index];
                    return Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                      child: FadeInRight(
                        delay: Duration(milliseconds: 300 + index * 100),
                        child: GestureDetector(
                          onTap: () {
                            slideTransition(
                              context,
                              DetailScreen(product: item),
                            );
                          },
                          child: Appgradientwidget(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(left: 10),
                            borderRadius: 30,
                            height: 30.h,
                            width: 33.w,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
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
                                        child: Image.asset(item.imagePath),
                                      ),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
