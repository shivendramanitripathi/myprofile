import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/certificate_model.dart';
import '../../../res/constants.dart';
import 'CertificateDetails.dart';

class CertificateGird extends StatefulWidget {
  final int crossAxisCount;
  final double ratio;

  CertificateGrid({Key? key, this.crossAxisCount = 3, this.ratio = 1.3}) : super(key: key);

  @override
  State<CertificateGrid> createState() => _CertificateGridState();
}

class _CertificateGridState extends State<CertificateGrid> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CertificationProvider(),
      child: Builder(
        builder: (context) {
          var certificationProvider = Provider.of<CertificationProvider>(context, listen: false);
          certificationProvider.initializeHoverList(certificateList.length);

          return GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30),
            itemCount: certificateList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: widget.crossAxisCount,
              childAspectRatio: widget.ratio,
            ),
            itemBuilder: (context, index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: EdgeInsets.symmetric(
                  vertical: defaultPadding,
                  horizontal: defaultPadding,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      Colors.pinkAccent,
                      Colors.blue,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink,
                      offset: Offset(-2, 0),
                      blurRadius: certificationProvider.hovers[index] ? 20 : 10,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(2, 0),
                      blurRadius: certificationProvider.hovers[index] ? 20 : 10,
                    ),
                  ],
                ),
                child: CertificateStack(index: index),
              );
            },
          );
        },
      ),
    );
  }
}
