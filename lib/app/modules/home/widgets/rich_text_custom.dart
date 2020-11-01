import 'package:app_nice_beer/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextCusrom extends StatelessWidget {
  const RichTextCusrom({
    Key key,
    @required this.label,
    @required this.valueText,
  }) : super(key: key);

  final String label;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: '$label: ',
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
                    color: CustomColors.texasRose,
                    fontWeight: FontWeight.w700,
                    fontSize: 16)),
          ),
          TextSpan(
            text: valueText,
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(color: CustomColors.black, fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
