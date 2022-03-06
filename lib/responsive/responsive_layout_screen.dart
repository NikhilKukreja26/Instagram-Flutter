import 'package:flutter/material.dart';
import 'package:instagram_flutter/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  }) : super(key: key);

  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return webScreenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}
