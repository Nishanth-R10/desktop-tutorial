import 'package:alb/feautres/profile/presentation/widgets/settings_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/app_providers.dart';
import 'widgets/group_card.dart';
import 'widgets/big_card.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileNotifierProvider);
    final profile = profileState.profile;

    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.04;
    final avatarRadius = size.width * 0.13;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close, size: size.width * 0.06),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  radius: avatarRadius,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(Icons.person, size: avatarRadius * 1.5, color: Colors.grey.shade600),
                ),
                SizedBox(height: size.height * 0.01),
                Text(profile.name, style: TextStyle(fontSize: size.width * 0.07, fontWeight: FontWeight.w800)),
                SizedBox(height: size.height * 0.005),
                Text("${profile.location} • ${profile.id}", style: TextStyle(fontSize: size.width * 0.038, color: Colors.grey)),
                SizedBox(height: size.height * 0.02),

                // Row 1: Small Cards
                Row(
                  children: [
                    Expanded(child: SettingCard(title: "Personal Info", fontScale: size.width * 0.04)),
                    SizedBox(width: padding),
                    Expanded(child: SettingCard(title: "Your IDs", fontScale: size.width * 0.04)),
                  ],
                ),
                SizedBox(height: size.height * 0.015),

                // Row 2: Big Cards
           Row(
  children: [
    Expanded(
      child: SizedBox(
        height: size.height * 0.18,
        child: BigCard(
          title: "Notification Settings", // Split into two lines
          icon: Icons.notifications_none,
          fontScale: size.width * 0.032,
        ),
      ),
    ),
    SizedBox(width: padding),
    Expanded(
      child: SizedBox(
        height: size.height * 0.18,
        child: BigCard(
          title: "Invite\nand Earn",
          icon: Icons.card_giftcard,
          fontScale: size.width * 0.036,
        ),
      ),
    ),
  ],
),


                // Group Cards
                GroupCard(titles: ["Security Settings", "Employment and Tax Details", "Reach Us"], fontScale: size.width * 0.04),
                SizedBox(height: size.height * 0.02),

                // Other single cards
                SettingCard(title: "Terms and Conditions", showCircle: true, fontScale: size.width * 0.04),
                SizedBox(height: size.height * 0.015),
                SettingCard(title: "Logout", showCircle: true, fontScale: size.width * 0.04),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
