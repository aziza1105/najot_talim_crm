class Logout {
  String name;
  bool isLoggedIn;

  Logout(this.name,  this.isLoggedIn);

  void logout() {
    if (isLoggedIn) {
      print('Logging out $name...');
      isLoggedIn = false;
      name = 'null';
    } else {
      print('Nobody is currently logged in.');
    }
  }
}

void main() {
  var user1 = Logout('Gulrux', true);
  var user2 = Logout('Aziza', false);

  user1.logout(); // Logging out Gulrux...
  user2.logout(); // Nobody is currently logged in.
}
