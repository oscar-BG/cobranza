import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {

  final Widget child;
  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _ImageBackground(),
          _HeaderIcon(),
          this.child
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: Image.asset("assets/images/infra.png", width: 500, height: 130, fit: BoxFit.contain),
    );
  }
}


class _ImageBackground extends StatelessWidget {
  const _ImageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:  AssetImage("assets/images/background_login.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), // Ajusta la opacidad aquí
                    BlendMode.dstATop,
                ),
              ),
              
            ),
          )
        ],
      ),
    );
  }
}