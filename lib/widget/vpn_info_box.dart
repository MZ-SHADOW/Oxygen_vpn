import 'package:flutter/material.dart';

class VpnInfoBox extends StatefulWidget {
  const VpnInfoBox({super.key});

  @override
  State<VpnInfoBox> createState() => _VpnInfoBoxState();
}

class _VpnInfoBoxState extends State<VpnInfoBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 50,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 56),
        Container(
          height: 147,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/box_shadow.png"), // مسیر تصویر از assets
              fit: BoxFit.cover, // تنظیم اندازه تصویر
            ),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment(-1.0, 0.0), // چپ
              end: Alignment(1.0, 0.0), // راست
              colors: [
                Colors.transparent, // رنگ تیره چپ
                Color.fromARGB(29, 255, 255, 255), // رنگ روشن وسط
                Colors.transparent, // رنگ تیره راست
              ],
              stops: [0.0, 0.5, 1.0], // تعیین محل قرارگیری رنگ‌ها
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
              bottom: 14,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/lefticon.png',
                                scale: 1.8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              'اعلامیه',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Estedad',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset('assets/images/infobox.png',
                                scale: 2.5),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/righticon.png',
                                scale: 1.8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 1),
                Text(
                  'دایه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه دایه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیه اعلامیهاعلامیه ',
                  style: TextStyle(
                    fontFamily: 'Estedad',
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
