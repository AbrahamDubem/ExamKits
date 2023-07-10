class SignUpEmailAndPasswordFailure {
  final String message;

  const SignUpEmailAndPasswordFailure(
      [this.message = "An unknown error occured."]);

  factory SignUpEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak password':
        return SignUpEmailAndPasswordFailure(
            'please enter a stronger password');
      case 'invalid email':
        return SignUpEmailAndPasswordFailure(
            'email is not valid or badbly fformatted');
      case 'email-already-in-use':
        return SignUpEmailAndPasswordFailure(
            'An account alredy exist for that email');
      case 'operation-not-allowed':
        return SignUpEmailAndPasswordFailure(
            'Operation not allowed. Please cotact support.');
      case 'user disabled':
        return SignUpEmailAndPasswordFailure(
            'This user has been disabled. Please contact support for help');
      default:
        return SignUpEmailAndPasswordFailure();
    }
  }
}
