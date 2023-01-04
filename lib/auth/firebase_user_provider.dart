import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WoltFirebaseUser {
  WoltFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

WoltFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WoltFirebaseUser> woltFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WoltFirebaseUser>(
      (user) {
        currentUser = WoltFirebaseUser(user);
        return currentUser!;
      },
    );
