import 'package:flutter/material.dart';
import 'package:flutter_app1_video/utils/route.dart';
class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name='';
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, "/home");
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset("assets/images/hey.png",
              height: 200,),
              Text("Welcome $name",style: TextStyle(
                  fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
                 child: Column(
                   children: [
                     TextFormField(
                       decoration: InputDecoration(
                         hintText: "Enter UserName",
                         labelText: "Username",
                       ),
                       validator: (value){
                         if(value!.isEmpty)
                           return "Username cant be empty.";
                         return null;
                       },
                       onChanged: (value){
                         name=value;
                         setState(() {});
                       },
                     ),
                     TextFormField(
                       obscureText: true,
                       decoration: InputDecoration(
                         hintText: "Enter Password",
                         labelText: "Password",
                       ),
                       validator: (value){
                         if(value!.isEmpty)
                           return "Username cant be empty.";
                         if(value.length<6)
                           return "length is less 6.";
                         return null;
                       },
                     ),
                     SizedBox(
                       height: 20.0,
                     ),
                     Material(
                       borderRadius:
                       BorderRadius.circular(changeButton ? 50 : 8),
                       color: Colors.blue,
                       child: InkWell(
                         splashColor: Colors.red,
                         onTap: () =>moveToHome(context),
                         child: AnimatedContainer(
                           duration: Duration(seconds: 1),
                           width: changeButton ? 50 : 150,
                           height: 50,
                           alignment: Alignment.center,
                           child: changeButton
                               ? Icon(
                             Icons.done,
                             color: Colors.white,
                           )
                               : Text(
                             "Login",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
             )
            ],
          ),
        ),
      )
    );
  }
}
