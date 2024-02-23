import 'package:flutter/material.dart';

class MakromusicButton extends StatelessWidget {
  const MakromusicButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 3,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: 48,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const MakromusicLogo(),
        ),
      ),
    );
  }
}

class MakromusicLogo extends StatelessWidget {
  const MakromusicLogo({super.key});

  static const logoPath =
      'packages/makromusic_button/lib/assets/makromusic_logo.png';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        logoPath,
        fit: BoxFit.contain,
      ),
    );
  }
}
