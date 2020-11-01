import 'package:app_nice_beer/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextCusrom extends StatelessWidget {
  const RichTextCusrom({
    Key key,
    @required this.label,
    @required this.valueText,
    @required this.labelSize,
    @required this.valueTextLabel,
    @required this.labelColor,
    @required this.labelWeight,
  }) : super(key: key);

  final String label;
  final String valueText;
  final double labelSize;
  final double valueTextLabel;
  final Color labelColor;
  final FontWeight labelWeight;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: '$label: ',
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
                    color: labelColor,
                    fontWeight: labelWeight,
                    fontSize: labelSize)),
          ),
          TextSpan(
            text: valueText,
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
                    color: CustomColors.black, fontSize: valueTextLabel)),
          ),
        ],
      ),
    );
  }
}
