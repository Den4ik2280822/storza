import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loginand_sign_up_screen_widget.dart' show LoginandSignUpScreenWidget;
import 'package:flutter/material.dart';

class LoginandSignUpScreenModel
    extends FlutterFlowModel<LoginandSignUpScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
