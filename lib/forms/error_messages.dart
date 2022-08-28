// TODO error messages
import 'package:reactive_forms/reactive_forms.dart';

Map<String, String Function(Object)> formErrorMessages = {
  ValidationMessage.required: (p0) => 'Ovo polje je obavezno',
  ValidationMessage.email: (p0) => 'Morate unijeti valjan oblik email adrese',
  ValidationMessage.minLength: (p0) => 'Potrebno je unijeti više znakova',
  ValidationMessage.mustMatch: (p0) => 'Polja se ne podudaraju',
};

ValidatorFunction mustMatch(String controlName, String matchingControlName) {
  return (AbstractControl<dynamic> control) {
    final form = control as FormGroup;

    final formControl = form.control(controlName);
    final matchingFormControl = form.control(matchingControlName);

    if (formControl.value != matchingFormControl.value) {
      matchingFormControl.setErrors({'mustMatch': true});

      // force messages to show up as soon as possible
      // matchingFormControl.markAsTouched();
    } else {
      matchingFormControl.removeError('mustMatch');
    }

    return null;
  };
}
