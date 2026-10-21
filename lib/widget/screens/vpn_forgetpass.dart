import 'package:flutter/material.dart';

class VpnForgetpass extends StatefulWidget {
  const VpnForgetpass({super.key});

  @override
  State<VpnForgetpass> createState() => _VpnForgetpassState();
}

class _VpnForgetpassState extends State<VpnForgetpass> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: screenWidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF434353),
              Color(0xFF52525E),
              Color(0xFF2B2B38),
            ],
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: AnimatedPadding(
                    duration: const Duration(seconds: 1),
                    padding: EdgeInsets.only(
                      bottom: mediaQuery.viewInsets.bottom,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.10,
                        vertical: screenWidth * 0.05,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: screenWidth * 0.12),
                          Image.asset(
                            'assets/images/image.png',
                            width: screenWidth * 0.55,
                            height: screenWidth * 0.54,
                          ),
                          SizedBox(height: screenWidth * 0.12),
                          Text(
                            'لطفا به ایدی پشتیبانی پیام دهید',
                            style: TextStyle(
                              fontFamily: 'Estedad',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                            ),
                          ),
                          SizedBox(height: screenWidth * 0.25),
                          _telegramSupports(screenWidth),
                          SizedBox(height: screenWidth * 0.3),
                          _forgetPassButton(screenWidth),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _telegramSupports(double screenWidth) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(77, 255, 255, 255),
          padding: EdgeInsets.symmetric(vertical: screenWidth * 0.04),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.04),
            side: const BorderSide(color: Colors.white, width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '@support_oxigen',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.05,
                fontFamily: 'Estedad',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: screenWidth * 0.03),
            Image.asset(
              'assets/images/telegram.png',
              height: screenWidth * 0.1,
              width: screenWidth * 0.1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _forgetPassButton(double screenWidth) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(77, 255, 255, 255),
          padding: EdgeInsets.symmetric(vertical: screenWidth * 0.04),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.04),
            side: const BorderSide(color: Colors.white, width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'برگشت به صفحه اصلی',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.05,
                fontFamily: 'Estedad',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: screenWidth * 0.03),
            Image.asset(
              'assets/images/home.png',
              height: screenWidth * 0.08,
              width: screenWidth * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
