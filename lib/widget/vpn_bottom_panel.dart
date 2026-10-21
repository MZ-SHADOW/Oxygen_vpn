import 'package:flutter/material.dart';
import 'package:oxygen/widget/vpn_wakeup.dart';

class VpnBottomPanel extends StatefulWidget {
  const VpnBottomPanel({super.key});

  @override
  State<VpnBottomPanel> createState() => _VpnBottomPanelState();
}

class _VpnBottomPanelState extends State<VpnBottomPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2F2F3C),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
        boxShadow: [BoxShadow(color: Colors.transparent, blurRadius: 10)],
      ),
      child: Container(
        width: 412,
        height: 246,
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
              left: 129,
              top: 123,
              child: Container(
                width: 267,
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
              left: 16,
              top: 64,
              child: SizedBox(
                width: 119.04,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 16,
                  children: [
                    SizedBox(
                      width: 119.04,
                      height: 117.08,
                      child: Stack(),
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 8,
                        children: [
                          Text(
                            'غیرفعال',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFFE5E8EA),
                              fontSize: 14,
                              fontFamily: 'Estedad',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFF2A2A),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 1,
                                  top: 1,
                                  child: Container(
                                    width: 8,
                                    height: 8,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFF2A2A),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
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
              left: 275,
              top: 24,
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'German',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Estedad',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Frankfurd',
                            style: TextStyle(
                              color: Color(0xFF9E9E9E),
                              fontSize: 12,
                              fontFamily: 'Estedad',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 54,
                      height: 54,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xB7494949),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 11,
                            top: 11,
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://placehold.co/32x32"),
                                  fit: BoxFit.fill,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
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
            ),
            Positioned(
              left: 19,
              top: 16,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Row(
                      children: [
                        Text(
                          'سایر سرور ها',
                          style: TextStyle(
                            color: Color(0xFFE5E8EA),
                            fontSize: 14,
                            fontFamily: 'Estedad',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(width: 4),
                        Image.asset('assets/images/up_server.png', scale: 2.6),
                      ],
                    ),
                    //بالا اومدن صفحه سرور ها
                    VpnWakeup(),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 250,
              top: 94,
              child: Opacity(
                opacity: 0.50,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // آیتم جدید در سمت چپ
                      Text(
                        ' - آپی',
                        style: TextStyle(
                          color: Color(0xFFE5E8EA),
                          fontSize: 12,
                          fontFamily: 'Estedad',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 18,
                        height: 18,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Image.asset('assets/images/ping_white.png'),
                          ],
                        ),
                      ),
                      SizedBox(width: 35), // فاصله بین دو مجموعه آیتم‌ها
                      // آیتم اصلی که قبلاً بود
                      Text(
                        'پینگ +99',
                        style: TextStyle(
                          color: Color(0xFFE5E8EA),
                          fontSize: 12,
                          fontFamily: 'Estedad',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 18,
                        height: 18,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Image.asset('assets/images/ping_white.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 269,
              top: 168,
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 16,
                  children: [
                    Text(
                      '۱۴۰۳/۱۲/۳۰',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Estedad',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 4,
                        children: [
                          Text(
                            'انقضا',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Estedad',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 226,
              top: 139,
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 16,
                  children: [
                    Text(
                      '۴۰.۲۳ گیگ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Estedad',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 4,
                        children: [
                          Text(
                            'حجم باقی مانده',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Estedad',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 8.67,
                                  top: 12,
                                  child: Container(
                                    width: 1.33,
                                    height: 1.33,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFF9999),
                                      shape: OvalBorder(),
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
              left: 247,
              top: 197,
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  spacing: 16,
                  children: [
                    Container(
                      width: 39,
                      height: 20,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white.withValues(alpha: 51),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 4,
                            top: 3,
                            child: Container(
                              width: 14,
                              height: 14,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(55),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 3,
                        children: [
                          Text(
                            'اتصال هوشمند',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Estedad',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 16, height: 16, child: Stack()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
