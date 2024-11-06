class Validations{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }

    // Regular expression for validating email addresses
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required';
    }

    ///check for minimum password length
    if(value.length < 6){
      return 'Password must be at least 6 characters long';
    }

    ///check for uppercase letters
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contains at least one uppercase letter';
    }

    ///check for special characters
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must contains at least one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone number is required';
    }

    final phoneRegex = RegExp(r'^\d{10}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Enter a valid phone number(10 digit required)';
    }
    return null;
  }
}