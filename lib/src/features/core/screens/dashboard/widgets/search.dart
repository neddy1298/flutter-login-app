import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants/text_string.dart';

class DashboardSearchBox extends StatelessWidget {
  const DashboardSearchBox({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(width: 4),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tDashboardSearch,
            style: GoogleFonts.roboto(
              textStyle: txtTheme.headline2?.apply(
                color: Colors.grey.withOpacity(0.5),
              ),
              fontSize: 30.0,
            ),
          ),
          const Icon(
            Icons.mic,
            size: 25,
          ),
        ],
      ),
    );
  }
}
