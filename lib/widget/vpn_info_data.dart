import 'package:flutter/material.dart';

class VpnInfoData extends StatelessWidget {
  const VpnInfoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 90,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 0,
            child: Container(
              child: Row(
                children: [
                  Text(
                    '00 kb',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Estedad',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'آپلود',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Estedad',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 4),
                  Image.asset('assets/images/download.png', scale: 2),
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
                    '00:00:00',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Estedad',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
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
                    '00 kb',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Estedad',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'دانلود',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Estedad',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 4),
                  Image.asset('assets/images/upload.png', scale: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
