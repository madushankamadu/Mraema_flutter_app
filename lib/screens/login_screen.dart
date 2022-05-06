import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        if(value!.isEmpty){
          return ("Please Enter Your Email");
        }
        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
            .hasMatch(value)){
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
    );


   return Scaffold(
     backgroundColor: Colors.white,
     body: Center(
       child: SingleChildScrollView(
         child: Container(
           color: Colors.white,
           child: Padding(
             padding: const EdgeInsets.all(36.0),
             child: Form(
               key: _formKey,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   SizedBox(
                     height: 200,
                     child: Image.asset(
                       "assets/pngegg.png",
                       fit: BoxFit.contain,
                     ),
                   ),
                   SizedBox(
                     height: 45,
                     ),
                   emailField,
                   SizedBox(height: 25),



                 ],
               ),

             ),

           ),
         ),
       ),
     ),
   );


  }




  }

