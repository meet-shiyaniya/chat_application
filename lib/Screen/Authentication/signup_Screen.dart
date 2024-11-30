import 'package:chat_application/Screen/Chat%20Screen/chat_Screen.dart';
import 'package:chat_application/Screen/Provider/signup_Screen_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {

  // controllers
  final formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var addressController = TextEditingController();
  var countryController = TextEditingController();
  var stateController = TextEditingController();
  var cityController = TextEditingController();
  var postalCodeController = TextEditingController();
  var birthDateController = TextEditingController();
  var genderController = TextEditingController();
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Sign Up",style: TextStyle(fontFamily: "CherrySwash-Regular", color: Color.fromRGBO(67, 142, 150, 1), fontSize: 40, fontWeight: FontWeight.bold,),),
      ),

      body: Padding(

        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Please enter your credentials to proceed", style: TextStyle(color: Color.fromRGBO(58, 71, 80, 1), fontSize: 16),),
              SizedBox(height: 35,),

              Form(

                key: formKey,
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Full Name",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if(value == ""){
                          return "Please, Enter Full Name!";
                        } else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),

                    Text("Phone",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      validator: (value) {
                        value = value.toString().trim().replaceAll(" ", "");
                        if(value == ""){
                          return "Please, Enter Phone Number";
                        }else if(value.length != 10){
                          return "Please, Enter Valid Phone Number";
                        }else{
                          for(int i = 0; i < 10; i++){
                            if(value[i] == "0" || value[i] == "1" || value[i] == "2" || value[i] == "3" ||
                                value[i] == "4" || value[i] == "5" || value[i] == "6" || value[i] == "7" ||
                                value[i] == "8" || value[i] == "9"){
                            }else{
                              return "Enter Phone No Only in Digits";
                            }
                          }
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Container(
                          width: 84,
                          child: Row(
                            children: [
                              SizedBox(width: 16,),
                              Image.asset("asset/twemoji_flag-india.png",),
                              SizedBox(width: 12,),
                              Text("+91",style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),

                    Text("Email address",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if(value == ""){
                          return "Please, Enter Email Address";
                        }else if(!(value!.endsWith("@gmail.com"))){
                          return "Please, Enter Valid Email Address!";
                        }else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),

                    Text("Password",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isPasswordVisible,
                      validator: (value) {
                        if(value == ""){
                          return "Please, Enter Password";
                        }else if(value!.length < 8){
                          return "Enter Password In 8 Characters!";
                        }else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        helperText: "Password must have: uppercase, number & spl character",
                        helperStyle: TextStyle(color: Color.fromRGBO(194, 0, 82, 1), fontSize: 12),
                        suffixIcon: IconButton(
                          icon: isPasswordVisible ? Icon(Icons.visibility_off,color: Colors.black,) : Icon(Icons.visibility,color: Colors.black,),
                          onPressed: (){
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),

                    Text("Address:",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: addressController,
                      maxLines: 3,
                      validator: (value) {
                        if(value == ""){
                          return "Please, Enter Address!";
                        } else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),

                    Text("Country",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    Consumer<signupScreenProvider>(
                      builder: (context, value, child) {
                        return DropdownButtonFormField<String>(
                          value: value.selectedCountry, // Bind the selected value from provider
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          items: value.country.map((item) => DropdownMenuItem(value: item, child: Text(item),)).toList(),
                          onChanged: (newValue) {
                            value.selectCountry(newValue!); // Update the provider state
                          },
                        );
                      },
                    ),
                    SizedBox(height: 22,),

                    Text("State",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    Consumer<signupScreenProvider>(
                      builder: (context, value, child) {
                        return DropdownButtonFormField<String>(
                          value: value.selectedState, // Bind the selected value from provider
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            hintText: "Select",
                            hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 14),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          items: value.state.map((item) => DropdownMenuItem(value: item, child: Text(item),)).toList(),
                          onChanged: (newValue) {
                            value.selectState(newValue!); // Update the provider state
                          },
                        );
                      },
                    ),
                    SizedBox(height: 22,),

                    Text("City",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    Consumer<signupScreenProvider>(
                      builder: (context, value, child) {
                        return DropdownButtonFormField<String>(
                          value: value.selectedCity, // Bind the selected value from provider
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            hintText: "Select",
                            hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 14),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          items: value.city.map((item) => DropdownMenuItem(value: item, child: Text(item),)).toList(),
                          onChanged: (newValue) {
                            value.selectCity(newValue!); // Update the provider state
                          },
                        );
                      },
                    ),
                    SizedBox(height: 22,),

                    Text("Postal Code",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: postalCodeController,
                      keyboardType: TextInputType.number,
                      maxLength: 6,
                      validator: (value) {
                        if(value == ""){
                          return "Please, Enter Postal Code!";
                        } else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),

                    Text("My date of birth:",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 8,),
                    Consumer<signupScreenProvider>(
                      builder: (context, value, child) {
                        return TextFormField(
                          controller: TextEditingController(text: value.selectedDate),
                          readOnly: true,
                          onTap: () => value.selectDate(context, value), // Trigger date picker on tap
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today),
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(105, 105, 105, 0.25)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 22,),

                    Text("Gender",style: TextStyle(color: Color.fromRGBO(59, 117, 127, 1), fontSize: 14, fontWeight: FontWeight.bold,),),
                    Consumer<signupScreenProvider>(
                      builder: (context, values, child) {
                        return Wrap(
                          spacing: 0.0, // Space between radio buttons
                          runSpacing: 0.0, // Space between rows if wrapping happens
                          children: [
                            RadioListTile<String>(
                              title: const Text(
                                "Male",
                                style: TextStyle(fontSize: 14), // Adjust font size for readability
                              ),
                              value: "Male",
                              groupValue: values.selectedGender,
                              onChanged: (value) {
                                values.selectGender(value!);
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text(
                                "Female",
                                style: TextStyle(fontSize: 14),
                              ),
                              value: "Female",
                              groupValue: values.selectedGender,
                              onChanged: (value) {
                                values.selectGender(value!);
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text(
                                "Prefer not to say",
                                style: TextStyle(fontSize: 14),
                              ),
                              value: "Prefer not to say",
                              groupValue: values.selectedGender,
                              onChanged: (value) {
                                values.selectGender(value!);
                              },
                            ),
                          ],
                        );


                      },
                    ),
                    SizedBox(height: 25,),

                    ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          Fluttertoast.showToast(msg: "Sign Up Successfully...");
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => chatScreen()),(route) => false,);
                        }
                      },
                      child: Text("CREATE ACCOUNT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 255, 255, 1)),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(67, 142, 150, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fixedSize: Size(400, 50),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
