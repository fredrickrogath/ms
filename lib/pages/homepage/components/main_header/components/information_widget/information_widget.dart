import 'package:flutter/material.dart';
import 'components/layer_one/layer_one.dart';
import 'components/layer_three/layer_three.dart';
import 'components/layer_two/layer_two.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: OverflowBox(
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: const [
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: LayerOne()),

                SizedBox(height: 2),

                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: LayerTwo()),

                SizedBox(height: 2),

                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: LayerThree()),

                // LayerThree()

                // const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
