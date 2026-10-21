import 'package:flutter/material.dart';
import 'package:oxygen/widget/vpn_bottom_panel.dart';
import 'package:oxygen/widget/vpn_info_box.dart';
import 'package:oxygen/widget/vpn_info_data.dart';

class VpnHome extends StatefulWidget {
  const VpnHome({super.key});

  @override
  State<VpnHome> createState() => _VpnHomeState();
}

class _VpnHomeState extends State<VpnHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1923),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/setting.png',
                scale: 2.4,
              ),
            ),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/exit.png',
                  scale: 2.2,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Center(
              child: const VpnInfoBox(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 23),
            child: Image.asset('assets/images/map.png'),
          ),
          Center(
            child: Positioned.fill(
              child: const VpnInfoData(),
            ),
          ),
        ],
      ),
      bottomSheet: DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.32, // مقدار اولیه 30٪
        minChildSize: 0.1, // حداقل ارتفاع
        maxChildSize: 0.9, // حداکثر ارتفاع

        builder: (context, scrollController) {
          return VpnBottomPanel();
        },
      ),
    );
  }
}
