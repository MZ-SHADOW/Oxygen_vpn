import 'package:flutter/material.dart';
import 'package:oxygen/widget/screens/vpn_login.dart';

class VpnTransition extends StatefulWidget {
  const VpnTransition({super.key});

  @override
  State<VpnTransition> createState() => _VpnTransitionState();
}

class _VpnTransitionState extends State<VpnTransition> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1600), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const VpnLogin()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF434353), Color(0xFF52525E), Color(0xFF2B2B38)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/image.png', height: 194, width: 197),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              '. به اکسیژن خوش آمدید',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Estedad',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
