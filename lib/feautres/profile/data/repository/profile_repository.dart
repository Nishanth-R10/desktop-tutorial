import '../../domain/entities/profile.dart';

class ProfileRepository {
  Profile getProfile() {
    return Profile(name: "Alqabiadi", location: "alabama", id: "00052321");
  }
}
