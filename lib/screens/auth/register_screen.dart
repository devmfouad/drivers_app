import 'package:drivers_app/screens/auth/car_detail_screen.dart';
import 'package:drivers_app/screens/auth/login_screen.dart';
import 'package:drivers_app/shared/constants.dart';
import 'package:drivers_app/shared/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(outerPadding),
          child: Form(
            child: Column(
              children: [
                const SizedBox(height: 60,),
                appLogo,
                const SizedBox(height: 25,),

                const Text("Register as Driver" , style: TextStyle(color: Colors.grey,fontSize: 24),),


                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: "Your Name",
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
                const SizedBox(height: 12,),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Your Phone",
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CarDetailScreen()));
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                  child: const Text("have an account please login" ,
                    style: TextStyle(color: Colors.grey),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
