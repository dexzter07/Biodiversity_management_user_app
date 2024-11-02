import 'package:form_field_validator/form_field_validator.dart';

final phoneValidation = MultiValidator([
  RequiredValidator(errorText: "Phone number is required"),
  MinLengthValidator(10, errorText: "Phone number must be 10 character long"),
  MaxLengthValidator(10, errorText: "Phone number must be 10 character long")
]);

final emailValidator = MultiValidator([
  RequiredValidator(errorText: "Email is required"),
  EmailValidator(errorText: "Invalid Email")
]);

final otpValidation = MultiValidator([
  RequiredValidator(errorText: "Passcode is required"),
  MinLengthValidator(6, errorText: "Passcode must be 6 character long"),
  MaxLengthValidator(6, errorText: "Passcode must be 6 character long")
]);

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: "Password is required"),
  MinLengthValidator(8,
      errorText: "Password must be at least 8 character long"),
  // PatternValidator(r'(?=.*?[#?!@$%^&*-])',
  //     errorText: "Password must have at least one special character")
]);
