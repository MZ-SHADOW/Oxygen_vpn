import 'package:flutter/material.dart';

class VpnWakeup extends StatefulWidget {
  const VpnWakeup({super.key});

  @override
  State<VpnWakeup> createState() => _VpnWakeupState();
}

class _VpnWakeupState extends State<VpnWakeup> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true, // اجازه تنظیم ارتفاع دلخواه
          backgroundColor: Colors.transparent, // برای داشتن گوشه‌های گرد
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height * 0.6, // ارتفاع پنل
            decoration: BoxDecoration(
              color: Color(0xFF2F2F3C), // رنگ پس‌زمینه مثل پنل اصلی
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 412,
                      height: 513,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF2F2F3C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 18,
                            top: 57,
                            child: SizedBox(
                              width: 378,
                              height: 106,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 248,
                                    top: 19,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://placehold.co/40x40"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    top: 24,
                                    child: Opacity(
                                      opacity: 0.50,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://placehold.co/30x30"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 29,
                                    child: Opacity(
                                      opacity: 0.40,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://placehold.co/20x20"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 308,
                                    top: 24,
                                    child: Opacity(
                                      opacity: 0.50,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://placehold.co/30x30"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 358,
                                    top: 29,
                                    child: Opacity(
                                      opacity: 0.40,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://placehold.co/20x20"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 90,
                                    top: 19,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://placehold.co/40x40"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 150,
                                    top: 0,
                                    child: SizedBox(
                                      width: 78,
                                      height: 106,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 78,
                                              height: 78,
                                              decoration: ShapeDecoration(
                                                shape: OvalBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xFFD80027)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 6,
                                            top: 6,
                                            child: Container(
                                              width: 66,
                                              height: 66,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://placehold.co/66x66"),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: OvalBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xFFD80027)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 17,
                                            top: 86,
                                            child: Text(
                                              'کانادا',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Estedad-VF',
                                                fontWeight: FontWeight.w400,
                                                height: 1,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 18,
                            top: 243,
                            child: SizedBox(
                              width: 378,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 32,
                                children: [
                                  SizedBox(
                                    width: 378,
                                    child: Text(
                                      'سرور های قابل اتصال',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE5E8EA),
                                        fontSize: 20,
                                        fontFamily: 'Estedad-VF',
                                        fontWeight: FontWeight.w400,
                                        height: 1,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 20,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 48,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color(0xFFDEDEDE)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 16,
                                                top: 14,
                                                child: Text(
                                                  'پینگ ۱۰۹',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontFamily: 'Estedad-VF',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.25,
                                                    letterSpacing: 0.16,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 245,
                                                top: 14,
                                                child: Text(
                                                  'اطلاعات سرور',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontFamily: 'Estedad-VF',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.25,
                                                    letterSpacing: 0.16,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 342,
                                                top: 14,
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 48,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color(0xFFDEDEDE)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 16,
                                                top: 14,
                                                child: Text(
                                                  'پینگ ۱۰۹',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontFamily: 'Estedad-VF',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.25,
                                                    letterSpacing: 0.16,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 245,
                                                top: 14,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    spacing: 4,
                                                    children: [
                                                      Text(
                                                        'اطلاعات سرور',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontFamily:
                                                              'Estedad-VF',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.25,
                                                          letterSpacing: 0.16,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Stack(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 48,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color(0xFFDEDEDE)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 16,
                                                top: 14,
                                                child: Text(
                                                  'پینگ ۱۰۹',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontFamily: 'Estedad-VF',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.25,
                                                    letterSpacing: 0.16,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 245,
                                                top: 14,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    spacing: 4,
                                                    children: [
                                                      Text(
                                                        'اطلاعات سرور',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontFamily:
                                                              'Estedad-VF',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.25,
                                                          letterSpacing: 0.16,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Stack(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 203,
                            child: Container(
                              width: 412,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            top: 24,
                            child: Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Stack(),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
