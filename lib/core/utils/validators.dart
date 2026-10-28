String? validateEmail(String? email) {
  if (email == null || email.trim().isEmpty) return 'pls fill field';
  if (email.contains('@') && email.contains('.')) {
    return null;
  } else {
    return 'pls add a @ or . to you email';
  }
}

String? validatePassword(String? password) {
  if (password == null || password.trim().isEmpty) return 'pls fill field';
  if (password.length >= 8) {
    return null;
  } else {
    return 'password must be at least 8 charcters';
  }
}

String? validatePhone(String? phone) {
  if (phone == null || phone.trim().isEmpty) return 'pls fill field';
  if (phone.length == 8 && phone[0] + phone[1] == '05') {
    return null;
  } else {
    return 'phone number must be 10 degits long and start with 05';
  }
}

String? validateFullName(String? fullName) {
  if (fullName == null || fullName.trim().isEmpty) return 'pls fill field';
  if (fullName.contains(' ')) {
    return null;
  } else {
    return 'pls enter full name';
  }
}
