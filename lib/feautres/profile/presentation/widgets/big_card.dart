import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigCard extends StatelessWidget {
  final String title;
  final IconData? icon;
  final double fontScale;

  const BigCard({super.key, required this.title, this.icon, this.fontScale = 14});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(size.width * 0.04),
      elevation: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(size.width * 0.04),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: size.height * 0.02),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (icon != null)
                    Container(
                      width: size.width * 0.12,
                      height: size.width * 0.12,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(icon, size: size.width * 0.07, color: Colors.blue),
                    ),
                  SizedBox(height: size.height * 0.015),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: fontScale,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Positioned(
                top: size.height * 0.015,
                right: size.width * 0.015,
                child: Icon(Icons.north_east, size: size.width * 0.035, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}