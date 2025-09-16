import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingCard extends StatelessWidget {
  final String title;
  final bool compact;
  final bool bigCard;
  final bool verticalLayout;
  final IconData? icon;
  final double fontScale;
  final bool showCircle;

  const SettingCard({
    super.key,
    required this.title,
    this.compact = false,
    this.bigCard = false,
    this.verticalLayout = false,
    this.icon,
    this.fontScale = 14,
    this.showCircle = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final horizontalPadding = size.width * 0.05;
    final verticalPadding = bigCard ? size.height * 0.02 : size.height * 0.02;

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (showCircle)
                Container(
                  width: size.width * 0.03,
                  height: size.width * 0.03,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                ),
              if (showCircle) SizedBox(width: size.width * 0.03),
              if (icon != null) Icon(icon, size: size.width * 0.06, color: Colors.black87),
              if (icon != null) SizedBox(width: size.width * 0.03),
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: fontScale,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(Icons.north_east, size: size.width * 0.035, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
