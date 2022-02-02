import 'package:drivers_app/shared/constants.dart';
import 'package:drivers_app/shared/widgets/app_widgets.dart';
import 'package:drivers_app/shared/widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatefulWidget {
  const CarDetailScreen({Key? key}) : super(key: key);

  @override
  _CarDetailScreenState createState() => _CarDetailScreenState();
}

class _CarDetailScreenState extends State<CarDetailScreen> {
  TextEditingController carModelController = TextEditingController();
  TextEditingController carNumberController = TextEditingController();
  TextEditingController carTypeController = TextEditingController();
  TextEditingController carColorController = TextEditingController();

  List<String> carTypes = ["Uber-Go", "Uber-X", "Bike"];
  String? selectedCarType;

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
                const SizedBox(
                  height: 60,
                ),
                appLogo,
                const SizedBox(
                  height: 25,
                ),

                const Text("Please Fill your car details" , style: TextStyle(color: Colors.grey,fontSize: 24),),

                CustomTextFormFieldWidget(
                  controller: carModelController,
                  hintText: "Car Model" ,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),

                const SizedBox(
                  height: 12,
                ),

                CustomTextFormFieldWidget(
                  controller: carNumberController,
                  hintText: "Car Number" ,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                ),


                const SizedBox(
                  height: 12,
                ),
                CustomTextFormFieldWidget(
                  controller: carColorController,
                  hintText: "Car Color" ,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),

                const SizedBox(
                  height: 12,
                ),
                DropdownButton(
                  hint: const Text("Select Car Type", style: TextStyle(
                    color: Colors.grey,
                  )),
                  dropdownColor: Colors.black,
                  value: selectedCarType,
                  items: carTypes.map((carType) {
                    return DropdownMenuItem(
                      child: Text(carType , style: const TextStyle(
                        color: Colors.grey,
                      ),),
                      value: carType,
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedCarType = value;
                    });
                  },
                ),

                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                    },
                    style:  ElevatedButton.styleFrom(
                        primary: Colors.amber
                    ),
                    child: const Text("Save Car Details" , style: TextStyle(
                        color: Colors.grey
                    ),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
