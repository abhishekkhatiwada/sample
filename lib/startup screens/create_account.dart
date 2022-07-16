import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:loginsignup/Screens/buddy_Screen.dart';
import 'package:loginsignup/startup%20screens/create_account.dart';
import 'package:loginsignup/startup%20screens/forgot_screen.dart';
import 'package:loginsignup/startup%20screens/homescreen.dart';

class CreateAccount extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  'Create an\naccount',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(height: 40),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'email is required';
                    }
                    if (!RegExp(
                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(val)) {
                      return 'Please a valid Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.grey,
                    filled: true,

                    hintText: 'Username or Email',
                    hintStyle: TextStyle(
                        color: Colors.white
                    ),
                    prefixIcon: Icon(Icons.person,color: Colors.black,),

                  ),
                ),
                SizedBox(height: 25),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.grey,
                    filled: true,

                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Colors.white
                    ),
                    prefixIcon: Icon(Icons.lock,color: Colors.black,),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black,),

                  ),
                ),
                SizedBox(height: 25),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.grey,
                    filled: true,

                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                        color: Colors.white
                    ),
                    prefixIcon: Icon(Icons.lock,color: Colors.black,),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black,),

                  ),
                ),
                SizedBox(height: 40),

                Row(
                  children: [
                    Text('Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30

                      ),
                    ),
                    SizedBox(width: 130,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(onPressed: (){
                        Get.to(()=>Welcome() );
                      },
                          icon: Icon(Icons.keyboard_arrow_right),

                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height:100),
                Row(
                  children: [
                    Text("Already have an account?  ",
                      style: TextStyle(
                        color: Colors.white,),

                    ),


                    TextButton(onPressed: (){
                      Get.to(()=> HomeScreen());
                    }, child: Text('Login',
                      style: TextStyle(
                        color: Colors.white,),
                    ))
                  ],
                )

              ],
            ),
          ),

        ),
      ),
    );
  }
}
