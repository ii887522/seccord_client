enum EmailVerificationAction {
  none,
  requestResetPassword,
  requestSignUp;

  factory EmailVerificationAction.from(String? onSubmit) {
    return switch (onSubmit) {
      'requestResetPassword' => EmailVerificationAction.requestResetPassword,
      'requestSignUp' => EmailVerificationAction.requestSignUp,
      _ => EmailVerificationAction.none
    };
  }
}
