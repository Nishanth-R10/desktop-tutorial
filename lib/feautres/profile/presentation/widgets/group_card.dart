import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupCard extends StatelessWidget {
  final List<String> titles;
  final double fontScale;
  const GroupCard({super.key, required this.titles, required this.fontScale});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final borderRadius = size.width * 0.035;
    
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(borderRadius),
      elevation: 0.5,
      child: Column(
        children: List.generate(titles.length, (index) {
          final isLast = index == titles.length - 1;
          return InkWell(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(index == 0 ? borderRadius : 0),
              topRight: Radius.circular(index == 0 ? borderRadius : 0),
              bottomLeft: Radius.circular(isLast ? borderRadius : 0),
              bottomRight: Radius.circular(isLast ? borderRadius : 0),
            ),
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04,
                vertical: size.height * 0.018,
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.03,
                    height: size.width * 0.03,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: size.width * 0.03),
                  Expanded(
                    child: Text(
                      titles[index],
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
          );
        }),
      ),
    );
  }
}