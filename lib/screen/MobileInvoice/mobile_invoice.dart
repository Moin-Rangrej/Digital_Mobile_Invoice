import 'package:flutter/material.dart';
import 'package:flutter_demo/screen/MobileInvoice/components/save_draft_container.dart';
import 'package:flutter_demo/screen/MobileInvoice/components/create_new_invoice.dart';

class MobileInvoice extends StatefulWidget {
  const MobileInvoice({super.key});

  @override
  State<MobileInvoice> createState() => _MobileInvoiceState();
}

class _MobileInvoiceState extends State<MobileInvoice> {
  final TextEditingController nameContrller = TextEditingController();
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text("Mobile Invoice")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DigitalInvoicemodelBottomSheet(context, height, width);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void DigitalInvoicemodelBottomSheet(
  BuildContext context,
  double height,
  double width,
) {
  bool ischecked = false;
  final TextEditingController nameContrller = TextEditingController();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setModalState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.9, // or use `height`
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: height * 0.15, // height of the bottom bar
                    left: width * 0.02,
                    right: width * 0.02,
                    top: height * 0.02,
                  ),
                  child: SingleChildScrollView(
                    child: CreateNewInvoice(
                      width,
                      context,
                      height,
                      nameContrller,
                      ischecked,
                      setModalState,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SaveDraftContainer(height: height, width: width),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
