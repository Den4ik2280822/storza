import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  Local state fields for this page.

  bool isTermsAccepted = false;

  String? emailField;

  String? passwordField;

  String? confirmPasswordField;

  ///  State fields for stateful widgets in this page.

  // State field(s) for CreatedEmail widget.
  FocusNode? createdEmailFocusNode;
  TextEditingController? createdEmailTextController;
  String? Function(BuildContext, String?)? createdEmailTextControllerValidator;
  // State field(s) for CreatedPassword widget.
  FocusNode? createdPasswordFocusNode;
  TextEditingController? createdPasswordTextController;
  late bool createdPasswordVisibility;
  String? Function(BuildContext, String?)?
      createdPasswordTextControllerValidator;
  // State field(s) for ConfirmCreatedPassword widget.
  FocusNode? confirmCreatedPasswordFocusNode;
  TextEditingController? confirmCreatedPasswordTextController;
  late bool confirmCreatedPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmCreatedPasswordTextControllerValidator;
  // State field(s) for TermsCheckbox widget.
  bool? termsCheckboxValue;

  @override
  void initState(BuildContext context) {
    createdPasswordVisibility = false;
    confirmCreatedPasswordVisibility = false;
  }

  @override
  void dispose() {
    createdEmailFocusNode?.dispose();
    createdEmailTextController?.dispose();

    createdPasswordFocusNode?.dispose();
    createdPasswordTextController?.dispose();

    confirmCreatedPasswordFocusNode?.dispose();
    confirmCreatedPasswordTextController?.dispose();
  }
}
