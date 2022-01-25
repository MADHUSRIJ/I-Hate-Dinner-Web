import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ihatedinner/constants/color_const.dart';
import 'package:ihatedinner/utilities/sizeconfig.dart';

class home_cooks extends StatefulWidget {
  const home_cooks({Key? key}) : super(key: key);

  @override
  _home_cooksState createState() => _home_cooksState();
}

class _home_cooksState extends State<home_cooks> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizeConfig.screenWidth! > 900
        ? Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.defaultWidth! * 10,
                  right: SizeConfig.defaultWidth! * 5),
              child: Container(
                height: SizeConfig.screenHeight!,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Dinner time to pleasant time.",
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.defaultWidth! * 2,
                                  color: colorDarkGray),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "We Plan, They Shop, You Cook. Hey I Hate Dinner, \nI’m Ready to Simplify My Life.",
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                  fontSize: SizeConfig.defaultWidth! * 0.6,
                                  color: colorDarkGray),
                            ),
                          ),
                          const SizedBox(height: 48),
                          Row(children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25),
                                margin: const EdgeInsets.only(right: 25),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      width: 1, color: colorLightGray),
                                ),
                                width: 260,
                                height: 46,
                                child: Text(
                                  "App Coming Soon",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: colorDarkGray),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: colorPrimary,
                                ),
                                width: 130,
                                height: 46,
                                child: Text(
                                  "Sign Up",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: colorWhite,
                                  ),
                                ),
                              ),
                            ),
                          ])
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          height: 550,
                          width: 500,
                          child: Image.asset("images/mobile1.png")),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: SizeConfig.screenHeight!,
              color: colorSecondary,
            )
          ],
        )
        : Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.defaultWidth! * 5,
                right: SizeConfig.defaultWidth! * 5),
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Dinner time to pleasant time.",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.defaultWidth! * 3,
                        color: colorDarkGray),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "We Plan, They Shop, You Cook. Hey I Hate Dinner, \nI’m Ready to Simplify My Life.",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig.defaultWidth! * 1,
                        color: colorDarkGray),
                  ),
                ),
                const SizedBox(height: 48),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: Row(children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25),
                        margin: const EdgeInsets.only(right: 25),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          border: Border.all(
                              width: 1, color: colorLightGray),
                        ),
                        width: 260,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "App Coming Soon",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig.defaultWidth! * 0.9,
                                color: colorDarkGray),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: colorPrimary,
                        ),
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.defaultWidth! * 1,
                              color: colorWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: SizeConfig.defaultHeight!*5,
                ),
                Container(
                    alignment: Alignment.center,
                    height: SizeConfig.defaultHeight!*55,
                    width: 500,
                    child: Image.asset("images/mobile1.png")),
                Container(
                  height: SizeConfig.screenHeight!,
                  color: Colors.black,
                )
              ],
            ),
          );
  }
}
