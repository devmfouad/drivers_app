import 'package:drivers_app/shared/constants.dart';
import 'package:drivers_app/shared/widgets/app_widgets.dart';
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


                TextFormField(
                  controller: carModelController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: "Car Model",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: carNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Car Number",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: carColorController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Car Color",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
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
