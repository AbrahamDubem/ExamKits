import 'package:examsss/home_page.dart';
import 'package:examsss/src/features/authentication/controllers/signup_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignUpController());
    final _formkey = GlobalKey<FormState>();

    List images =[
      "f.jpg",
      "i.png",
      "t.png",
    ];


    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/education.jpg"
                  ),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.18,),
                CircleAvatar(
                  backgroundColor: Colors.grey[500],
                  radius: 40,
                  backgroundImage: AssetImage(
                    "assets/images/cassy.jpg"
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          spreadRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.1),
                        )
                      ]
                  ),
                  child: TextField(
                    controller: controller.email,
                    decoration: InputDecoration(
                      hintText: "Email",
                        prefixIcon: Icon(Icons.email, color:Colors.deepPurpleAccent,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color:Colors.white,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color:Colors.white,
                            width: 1.0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          spreadRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.1),
                        )
                      ]
                  ),
                  child: TextField(
                    controller: controller.password,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_outlined, color:Colors.deepPurpleAccent,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color:Colors.white,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color:Colors.white,
                            width: 1.0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ),


              ],
            ),
          ),
          SizedBox(height: 25,),
          InkWell(
            onTap: (){
              if(_formkey.currentState !.validate()){
                SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
              }
              Get.to(() => HomePage());
            },
            child: Container(
              width: w*0.3,
              height: h*0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/card1.jpeg"
                    ),
                    fit: BoxFit.cover,
                  )
              ),
              child:  Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),

          SizedBox(height: 20),
          RichText(text: TextSpan(
              text: "-Or sign in with-",
              style: TextStyle(
                color:Colors.deepPurpleAccent,
                fontSize: 17,
              ),

          ),),
          SizedBox(height: 20),
          Wrap(
            children: List<Widget>.generate(
              3,
                (index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 22,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                        "assets/images/"+images[index]
                      ),
                    ),
                  ),
                );
                }
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Get.to(()=>HomePage());
            },
            child: RichText(
              text: TextSpan(
                  text: "Have an Account?",
                  style: TextStyle(
                      fontSize: 20,
                      color:Colors.deepPurpleAccent,
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
