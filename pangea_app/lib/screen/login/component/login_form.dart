import 'package:flutter/material.dart';
import 'package:pangea_app/components/default_button.dart';
import 'package:pangea_app/style/style.dart';
import 'package:pangea_app/utils/colors.dart';
import 'package:pangea_app/utils/size_config.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  LogInFormState createState() => LogInFormState();
}

class LogInFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // String email;
  // String Password;

  // Future<void> submit() async {
  //   final form = _formKey.currentState;
  //   if (form.validate()) {
  //     showLoaderDialog(context);
  //     AuthProvider().login(this.context, phone);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: getProportionateScreenHeight(60),
          ),
          SizedBox(
            height: getProportionateScreenHeight(120),
            width: getProportionateScreenWidth(120),
            child: Image.asset("assets/images/logo.png"),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text(
            'Unified Medical File',
            textAlign: TextAlign.center,
            style: Styles.h1,
          ),
          SizedBox(height: getProportionateScreenHeight(50)),
          TextFormField(
            decoration: Styles.input.copyWith(hintText: 'username or email'),
            keyboardType: TextInputType.emailAddress,
            // validator: (value) {
            //   phone = value.trim();
            //   return Validate.requiredField(value, "هذا الحقل مطلوب");
            // },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          TextFormField(
            decoration: Styles.input.copyWith(hintText: 'password'),
            keyboardType: TextInputType.visiblePassword,
            // validator: (value) {
            //   phone = value.trim();
            //   return Validate.requiredField(value, "هذا الحقل مطلوب");
            // },
          ),
          DefaultButton(
            "Login",
            onPresse: () {
              Navigator.of(context).pushReplacementNamed('/homeScreen');
            },
          ),
          const Center(
            child: InkWell(
              // onTap: () => Get.to(CompleteProfileScreen()),
              child: Text(
                "Forget Password?",
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          InkWell(
            // onTap: () => Get.to(CompleteProfileScreen()),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "New to Pangea App? ",
                  style: TextStyle(color: kTextColor),
                ),
                Text(
                  "Register",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
