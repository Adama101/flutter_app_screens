import 'package:flutter/material.dart';

// ignore: camel_case_types
class Screen_1 extends StatefulWidget {
  const Screen_1({Key? key}) : super(key: key);

  @override
  State<Screen_1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Screen_1> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 16,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: const Key('your_form_key'),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 41),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          // desired text style here
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address",
                        style: TextStyle(
                          // Add your desired text style here
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "TanyaMyroniuk@gmail.com",
                        prefixIcon: Container(
                          margin: const EdgeInsets.only(right: 16, bottom: 11),
                          child: Image.asset(
                            'imgEmailsEmailmailletter',
                            height: 22,
                            width: 22,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                      ),
                    ),
                    const SizedBox(height: 13),
                    TextFormField(
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Container(
                          margin: const EdgeInsets.only(right: 30, bottom: 11),
                          //Looking for the best image to use here
                          child: Image.asset(
                            '',
                          ),
                        ),
                        suffixIcon: Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 11),
                          child: Image.asset(
                            "ImageConstant.imgEye,"
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 38),
                    Text(
                      "Sign In",
                    ),
                    const SizedBox(),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "I’m a new user.",
                            //style: ,
                          ),
                          TextSpan(text: " "),
                          TextSpan(
                            text: "Sign In",
                            //style: CustomTextStyles.titleSmallff0066ff,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: double.maxFinite,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          onTapArrowLeft(context);
        },
      ),
    );
  }
}