
import 'package:flutter_riverpod/legacy.dart';
import '../domain/entities/profile.dart';
import '../data/repository/profile_repository.dart';

class ProfileState {
  final Profile profile;
  ProfileState({required this.profile});
}

class ProfileNotifier extends StateNotifier<ProfileState> {
  final ProfileRepository repository;
  ProfileNotifier(this.repository) : super(ProfileState(profile: repository.getProfile()));

//   void updateName(String name) {
//     state = ProfileState(profile: state.profile.(name: name));
//   }
// }
}