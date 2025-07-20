import 'package:flutter/material.dart';
import 'package:flutter_demo/component/MyText_button.dart';
import 'package:flutter_demo/component/button.dart';
import 'package:flutter_demo/utils/text__style.dart';

class SaveDraftContainer extends StatelessWidget {
  final double height;
  final double width;
  const SaveDraftContainer({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(bottom: height * 0.05),
      height: screenHeight * 0.12,
      margin: EdgeInsets.zero,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MytextButton(title: "Save as draft", onPress: () {}),
          Button(
            horizontalpadding: width * 0.09,
            verticalpadding: height * 0.02,
            style: createText(),
            text: "Create",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
