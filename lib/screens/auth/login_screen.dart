import 'package:drivers_app/screens/auth/register_screen.dart';
import 'package:drivers_app/screens/main_screen.dart';
import 'package:drivers_app/shared/constants.dart';
import 'package:drivers_app/shared/widgets/app_widgets.dart';
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

              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "Your Email",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Your Password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                ),
              ),

              const SizedBox(height: 24,),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MainScreen()));
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const RegisterScreen()));
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
