import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_accessories_app/provider/product_provider.dart';

class ColorContainerWidget extends StatelessWidget {

double? containerSize=25.0;
   ColorContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildContainer(0, Colors.amber[200]!),
        buildContainer(1, Colors.white.withOpacity(0.6)),
        buildContainer(2, Colors.white),
      ],
    );
  }

  Widget buildContainer(int index, Color color) {
    return Consumer<ProductProvider>(builder: (context,provider,child){
    return IconButton(
     onPressed: (){
      provider.changeColor(index);
  
     },
     icon: AnimatedContainer(duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: provider.selectedIndex==index ? containerSize! * 1.5: containerSize,
          height: provider.selectedIndex==index ? containerSize! * 1.5 : containerSize,
          decoration: BoxDecoration(shape: BoxShape.circle,color: color),
      ),
    );
  });
  }
}
