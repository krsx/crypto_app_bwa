import 'package:crypto_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssetCard extends StatelessWidget {
  final String name;
  final int money;
  final int percentage;
  final String logo;

  AssetCard(
      {this.name = "", this.money = 0, this.percentage = 0, this.logo = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(
              logo,
              width: 48,
            ),
            SizedBox(
              width: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: regulerTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$${money}",
                  style: titleTextStyle.copyWith(fontSize: 16),
                )
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "+${percentage}%",
                  style:
                      greenTextStyle.copyWith(fontSize: 16, color: greenColor),
                ),
                Text("Today",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: mediumgreyColor))
              ],
            )
          ],
        ),
      ),
    );
  }
}
