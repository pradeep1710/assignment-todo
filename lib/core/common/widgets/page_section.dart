import 'package:flutter/material.dart';

import '../../utils/kborder.dart';
import '../../utils/kpadding.dart';

class PageSection extends StatelessWidget {
  final Widget child;
  const PageSection({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: KPadding.only(context, bottom: 20),
      padding: KPadding.symmetric(context, horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: KBoarder.borderRadius()),
      child: child,
    );
  }
}
