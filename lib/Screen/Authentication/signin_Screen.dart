import 'package:chat_application/Screen/Authentication/signup_Screen.dart';
import 'package:flutter/material.dart';

class signinScreen extends StatefulWidget {
  const signinScreen({super.key});

  @override
  State<signinScreen> createState() => _signinScreenState();
}

class _signinScreenState extends State<signinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        height: MediaQuery.of(context).size.height.toDouble(),
        width: MediaQuery.of(context).size.width.toDouble(),
        child: Stack(

          children: [
            Container(

              height: MediaQuery.of(context).size.height.toDouble(),
              width: MediaQuery.of(context).size.width.toDouble(),
              child: Image.asset("asset/bgimg.png",fit: BoxFit.cover,),
            ),
            Positioned(

              top: 390,
              bottom: 390,
              left: 60,
              right: 60,
              child: ElevatedButton(

                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("asset/google.png"),
                    SizedBox(width: 12,),
                    Text("Sign In With Google",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(67, 142, 150, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

              ),
            ),

            Positioned(
              bottom: 335,
              right: 85,
              child: Row(
                children: [
                  Text("Don't have an account!",style: TextStyle(color: Colors.white),),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signupScreen()));
                    },
                    child: Text("Sign Up",style: TextStyle(color: Colors.yellow),),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
