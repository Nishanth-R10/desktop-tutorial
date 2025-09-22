import 'package:alb/feautres/profile/application/user_notification.dart';

import 'package:alb/feautres/profile/data/user_repository.dart';
import 'package:alb/feautres/profile/domain/user_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository();
});

final userNotifierProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  return UserNotifier(ref.read(userRepositoryProvider));
});