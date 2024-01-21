// login_page.dart

import 'package:daycanvas_front/body_appbar.dart';
import 'package:daycanvas_front/bottom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  Widget buildLoginContainer(String text, Color color, String? imagePath,
      {bool isWhiteText = false, VoidCallback? onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null)
              Image.asset(
                imagePath,
                height: 24,
                width: 24,
              )
            else
              Container(
                margin: const EdgeInsets.only(right: 8.0),
                child: const Icon(
                  Icons.edit,
                  size: 22,
                  color: Colors.white,
                ),
              ),
            const SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                color: isWhiteText ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildText(String text, double fontSize, Color color, FontStyle style) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontStyle: style,
        ),
      ),
    );
  }

  Future<void> launchUrl(String url) async {
    print('Trying to launch URL: $url');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBodyAppBar(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            buildText('로그인 하고', 20, Colors.white, FontStyle.italic),
            const SizedBox(height: 10),
            buildText('오늘 하루를 저장해보세요', 20, Colors.white, FontStyle.italic),
            const SizedBox(height: 200),
            buildLoginContainer(
              '구글로 로그인 하기',
              Colors.white,
              'google_icon.png',
              onPressed: () async {
                await launchUrl(
                    'http://localhost:8080/oauth2/authorization/google');
              },
            ),
            const SizedBox(height: 15),
            buildLoginContainer(
              '네이버로 로그인 하기',
              const Color(0xFF03C75A),
              'naver_icon.png',
              onPressed: () async {
                await launchUrl(
                    'http://localhost:8080/oauth2/authorization/naver');
              },
            ),
            const SizedBox(height: 15),
            buildLoginContainer(
              '카카오로 로그인 하기',
              const Color(0xFFFEE500),
              'kakao_icon.png',
              onPressed: () async {
                await launchUrl(
                    'http://localhost:8080/oauth2/authorization/kakao');
              },
            ),
            const SizedBox(height: 15),
            buildLoginContainer('로그인 없이 글쓰기', const Color(0xFF3E3A6B), null,
                isWhiteText: true),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
