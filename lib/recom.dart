import 'package:crypto_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecomBox extends StatelessWidget {
  final String imageUrl;
  final double money;
  final double percentage;
  final String name;

  RecomBox(
      {this.imageUrl = "",
      this.money = 0,
      this.percentage = 0,
      this.name = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: 42,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              name,
              style: titleTextStyle.copyWith(fontSize: 12),
            ),
            Row(
              children: [
                Text(
                  "\$${money}",
                  style: GoogleFonts.poppins(
                    color: Color(0xff0D0E32),
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "+${percentage}%",
                  style: GoogleFonts.poppins(
                    color: greenColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 112,
              height: 26,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xff141645),
                  ),
                ),
                child: Text(
                  "Buy",
                  style: titleTextStyle.copyWith(
                    fontSize: 12,
                    color: whiteColor,
                  ),
                ),
              ),
            )
            // Text.rich(
            //   TextSpan(
            //     children: [
            //       TextSpan(
            //         text: "\$15.00",
            //         style: GoogleFonts.poppins(
            //           color: Color(0xff0D0E32),
            //           fontWeight: FontWeight.w500,
            //           fontSize: 12,
            //         ),
            //       ),
            //       TextSpan(
            //         text: "+5,09%",
            //         style: GoogleFonts.poppins(
            //           color: greenColor,
            //           fontWeight: FontWeight.w500,
            //           fontSize: 12,
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
