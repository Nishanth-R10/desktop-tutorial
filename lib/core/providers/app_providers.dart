import 'package:alb/feautres/profile/application/profile_notifier.dart';
import 'package:alb/feautres/profile/data/repository/profile_repository.dart';

import 'package:flutter_riverpod/legacy.dart';


final profileNotifierProvider = StateNotifierProvider<ProfileNotifier, ProfileState>(
  (ref) => ProfileNotifier(ProfileRepository()),
);
