import 'package:alb/feautres/profile/domain/user.dart';
import 'dart:math';

class UserRepository {
  Future<User> fetchUser() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));
    
    
    final random = Random();
    if (random.nextBool()) {
      throw Exception('Failed to fetch user data');
    }
    
    // Return hardcoded user data
    return User(
      name: "Alqabiadi",
      email: "aliahmed@example.com",
      location: "alabama",
      id: "00052321",
    );
  }
}