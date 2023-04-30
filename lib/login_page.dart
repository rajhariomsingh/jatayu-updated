import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Jatayu/Signup_page.dart';
import 'package:Jatayu/auth_service.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.7),
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/jatayu3.png"
                ),
                  fit:  BoxFit.cover
              )
            ),

          ),

          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Text(
                  "Namaste",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                Text(
                  "Please Log In",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                  ),
                ),
                SizedBox(height: h*0.07,),

                Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(1,1),
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Your Email ID",
                        prefixIcon: Icon(Icons.email,color: Colors.black,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        )
                      ),
                        enabledBorder: OutlineInputBorder(

                            borderRadius:BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )
                        ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(1,1),
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Passward",
                        prefixIcon: Icon(Icons.password,color: Colors.black,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    Text(
                      "Forgot Passward?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
          SizedBox(height: w*0.08,),
          Container(
            width: w*0.6,
            height: h*0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey[700],

            ),

            child: Center(
              child: TextButton(

                  onPressed: (){
                    AuthService().signInWithGoogle();

                    // AuthService().handleAuthState();

                  },


                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),

                ),
              ),
            ),

          ),
          SizedBox(height:w*0.1,),
          RichText(text: TextSpan(
            text: "Don't have an account?",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 20,
            ),
            children: [
              TextSpan(
              text: " Create",
              style: TextStyle(
                color: Colors.blueGrey[700],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
              )
            ]
          ))
        ],
      ),


    );
  }
}
