import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressController1;
  String? Function(BuildContext, String?)? emailAddressController1Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressController2;
  String? Function(BuildContext, String?)? emailAddressController2Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode3;
  TextEditingController? emailAddressController3;
  String? Function(BuildContext, String?)? emailAddressController3Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode4;
  TextEditingController? emailAddressController4;
  String? Function(BuildContext, String?)? emailAddressController4Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordController2;
  String? Function(BuildContext, String?)? passwordController2Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode5;
  TextEditingController? emailAddressController5;
  String? Function(BuildContext, String?)? emailAddressController5Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode6;
  TextEditingController? emailAddressController6;
  String? Function(BuildContext, String?)? emailAddressController6Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode7;
  TextEditingController? emailAddressController7;
  String? Function(BuildContext, String?)? emailAddressController7Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode8;
  TextEditingController? emailAddressController8;
  String? Function(BuildContext, String?)? emailAddressController8Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode3;
  TextEditingController? passwordController3;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordController3Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode4;
  TextEditingController? passwordController4;
  String? Function(BuildContext, String?)? passwordController4Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode1?.dispose();
    emailAddressController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressController2?.dispose();

    emailAddressFocusNode3?.dispose();
    emailAddressController3?.dispose();

    emailAddressFocusNode4?.dispose();
    emailAddressController4?.dispose();

    passwordFocusNode1?.dispose();
    passwordController1?.dispose();

    passwordFocusNode2?.dispose();
    passwordController2?.dispose();

    emailAddressFocusNode5?.dispose();
    emailAddressController5?.dispose();

    emailAddressFocusNode6?.dispose();
    emailAddressController6?.dispose();

    emailAddressFocusNode7?.dispose();
    emailAddressController7?.dispose();

    emailAddressFocusNode8?.dispose();
    emailAddressController8?.dispose();

    passwordFocusNode3?.dispose();
    passwordController3?.dispose();

    passwordFocusNode4?.dispose();
    passwordController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
