import 'package:drivers_app/screens/auth/register_screen.dart';
import 'package:drivers_app/screens/main_screen.dart';
import 'package:drivers_app/shared/constants.dart';
import 'package:drivers_app/shared/helpers/app_helper.dart';
import 'package:drivers_app/shared/widgets/app_widgets.dart';
import 'package:drivers_app/shared/widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(outerPadding),
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 60,),
              appLogo,
              const SizedBox(height: 25,),

              const Text("Login as Driver" , style: TextStyle(color: Colors.grey,fontSize: 24),),

              CustomTextFormFieldWidget(controller: emailController, hintText: "Your Email" , obscureText: false, keyboardType: TextInputType.emailAddress,),

              const SizedBox(height: 12,),
              CustomTextFormFieldWidget(controller: passwordController, hintText: "Your Password" , obscureText: true , keyboardType: TextInputType.text,),


              const SizedBox(height: 24,),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                   // Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MainScreen()));
                    AppHelper.navigateToScreen(context, const MainScreen());
                  },
                  style:  ElevatedButton.styleFrom(
                      primary: Colors.amber
                  ),
                  child: const Text("Register Driver" , style: TextStyle(
                      color: Colors.grey
                  ),),
                ),
              ),
              const SizedBox(height: 12,),

              TextButton(
                  onPressed: (){
                    AppHelper.navigateToScreen(context, const RegisterScreen());
                    //Navigator.of(context).push(MaterialPageRoute(builder: (_) => const RegisterScreen()));
                  },
                  child: const Text("Don not have an account create account now" ,
                  style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
