import 'package:flutter/material.dart';
import 'package:flutter_demo/component/button.dart';
import 'package:flutter_demo/component/checkbox.dart';
import 'package:flutter_demo/component/contact_button.dart';
import 'package:flutter_demo/component/custom_icon_button.dart';
import 'package:flutter_demo/component/custom_textfield.dart';
import 'package:flutter_demo/component/info_box.dart';
import 'package:flutter_demo/component/label.dart';
import 'package:flutter_demo/component/round_number.dart';
import 'package:flutter_demo/utils/screens_utils.dart';
import 'package:flutter_demo/utils/text__style.dart';

Column CreateNewInvoice(
  double width,
  BuildContext context,
  double height,
  TextEditingController nameContrller,
  bool ischecked,
  StateSetter setModalState,
) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.04),
            child: CustomIconButton(
              size: 30,
              onPress: () {
                Navigator.pop(context);
              },
              icon: Icons.close,
            ),
          ),
          Expanded(
            child: Label(
              text: "Create a new invoice",
              textStyle: newInvoice(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      InfoBox(
        height: height * 0.1,
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.028,
        ),
        widget: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoundNumber(text: "1"),
              Label(
                text: "Invoice information",
                textStyle: invoiceInformation(),
              ),
              Label(text: "#27 · 07/08/2022", textStyle: invoiceDate()),
            ],
          ),
        ),
      ),
      InfoBox(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 21),
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.005,
        ),
        widget: Column(
          children: [
            Row(
              children: [
                RoundNumber(text: "2"),
                SizedBox(width: width * 0.03),
                Expanded(
                  child: Label(text: "Client Data", textStyle: clientData()),
                ),
                ContactButton(
                  text: "Contacts",
                  onPress: () {},
                  icon: Icons.person_outline_outlined,
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Form(
              child: Column(
                children: [
                  CustomTextfield(
                    labelText: "Company name",
                    verticalpadding: height * 0.015,
                    textEditingController: nameContrller,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                  ),
                  CustomTextfield(
                    labelText: "VAT ID",
                    verticalpadding: height * 0.015,
                    textEditingController: nameContrller,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                  ),
                  CustomTextfield(
                    labelText: "Address",
                    verticalpadding: height * 0.015,
                    textEditingController: nameContrller,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                  ),
                  Row(
                    children: [
                      MyCheckbox(
                        checkboxdx: -5,
                        checkboxdy: 0,
                        contentPadding: EdgeInsets.zero,
                        activeColor: AppColors.AppPurple,
                        checkColor: AppColors.AppWhite,
                        controlAffinity: ListTileControlAffinity.leading,
                        ischecked: ischecked,
                        dx: -20,
                        dy: 0,
                        title: "Save contact",
                        onChanged: (bool? value) {
                          setModalState(() {
                            ischecked = value!;
                          });
                        },
                      ),
                      Button(
                        text: "Continue",
                        onPress: () {},
                        horizontalpadding: width * 0.05,
                        verticalpadding: height * 0.015,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      InfoBox(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.02,
          vertical: height * 0.03,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.03,
        ),
        widget: Row(
          children: [
            RoundNumber(text: "3"),
            SizedBox(width: width * 0.03),
            Label(text: "Items & Payment", textStyle: itemAndPayment()),
          ],
        ),
      ),
      // SizedBox(height: height * 0.04),
    ],
  );
}