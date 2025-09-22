
import 'package:alb/feautres/profile/domain/user_state.dart';
import 'package:alb/feautres/profile/data/user_repository.dart';
import 'package:flutter_riverpod/legacy.dart';

class UserNotifier extends StateNotifier<UserState> {
  final UserRepository repository;
  
  UserNotifier(this.repository) : super(const UserInitial());

  Future<void> fetchUser() async {
    state = const UserLoading();
    
    try {
      final user = await repository.fetchUser();
      state = UserLoaded(user);
    } catch (e) {
      state = UserError(e.toString());
    }
  }
}