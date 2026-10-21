import 'package:flutter/material.dart';
import 'package:oxygen/widget/screens/vpn_forgetpass.dart';
import 'package:oxygen/widget/screens/vpn_home.dart';

class VpnLogin extends StatefulWidget {
  const VpnLogin({super.key});

  @override
  State<VpnLogin> createState() => _VpnLoginState();
}

class _VpnLoginState extends State<VpnLogin> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  bool _isPasswordVisible = false;

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
            colors: [Color(0xFF434353), Color(0xFF52525E), Color(0xFF2B2B38)],
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: AnimatedPadding(
                    duration: const Duration(seconds: 1),
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.10,
                        vertical: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 50),
                          Image.asset(
                            'assets/images/image.png',
                            width: 197,
                            height: 194,
                          ),
                          SizedBox(height: 30),
                          const Text(
                            'اطلاعات خود را وارد کنید',
                            style: TextStyle(
                              fontFamily: 'Estedad',
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8,
                              left: 190,
                            ),
                            child: Text(
                              'یوزر نیم',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Vazirmatn',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          _buildTextField(
                            controller: _usernameController,
                            hintText: '',
                            iconPath: 'assets/images/user.png',
                            focusNode: _usernameFocusNode,
                            textInputAction: TextInputAction.next,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8,
                              left: 190,
                            ),
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8,
                              left: 190,
                            ),
                            child: Text(
                              'رمز عبور',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Vazirmatn',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          _buildPasswordField(),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VpnForgetpass(),
                                  ),
                                );
                              },
                              child: const Text(
                                'فراموشی رمز عبور',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Vazirmatn',
                                ),
                              ),
                            ),
                          ),
                          _buildLoginButton(),
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

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required String iconPath,
    required FocusNode focusNode,
    required TextInputAction textInputAction,
  }) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Estedad',
              fontWeight: FontWeight.w500,
            ),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white.withOpacity(0.3),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white, width: 1),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.white70),
            ),
            textInputAction: textInputAction,
            onSubmitted: (_) {
              if (focusNode == _usernameFocusNode) {
                FocusScope.of(context).requestFocus(_passwordFocusNode);
              }
            },
          ),
        ),
        const SizedBox(width: 10),
        Image.asset(iconPath, height: 30, width: 30),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _passwordController,
            focusNode: _passwordFocusNode,
            obscureText: !_isPasswordVisible,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Estedad',
              fontWeight: FontWeight.w500,
            ),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white.withOpacity(0.3),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white, width: 1),
              ),
              hintText: '',
              hintStyle: const TextStyle(color: Colors.white70),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
              suffixIcon: Padding(padding: const EdgeInsets.only(right: 10)),
            ),
            textInputAction: TextInputAction.done,
          ),
        ),
        SizedBox(width: 10),
        Image.asset('assets/images/pass.png', height: 30, width: 30),
      ],
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VpnHome()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.3),
          padding: const EdgeInsets.symmetric(vertical: 16.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Colors.white, width: 1),
          ),
        ),
        child: const Text(
          'ورود',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Estedad',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
