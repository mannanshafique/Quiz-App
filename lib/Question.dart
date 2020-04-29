//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class Loginapp extends StatefulWidget {
//  @override
//  _LoginappState createState() => _LoginappState();
//}
//
//enum FormType{
//  login,
//  register
//}
//
//class _LoginappState extends State<Loginapp> {
//  final _formkey = new GlobalKey<FormState>();
//  FormType _formType = FormType.login;
//
//  String email = '', password = "";
//
////  TextEditingController emailContoller = TextEditingController();
////  TextEditingController passwordContoller = TextEditingController();
//
//
//  void movetoRegister(){
//    _formkey.currentState.reset();
//    setState(() {
//      _formType = FormType.register;
//    });
//  }
//
//    bool _submit(){
//    final form = _formkey.currentState;
//    if(form.validate()){
//      form.save();
//      return true;
//    }
//    else{
//      return false;
//    }
//  }
//
//  void movetoLogin(){
//    _formkey.currentState.reset();
//    setState(() {
//      _formType = FormType.login;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Login"),
//      ),
//      body: SingleChildScrollView(
//        child: Container(
//          color: Colors.white,
//          child:Form(
//              key: _formkey,
//              child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
//                child:  Column(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  children: createinputs(),
//                ),
//              )
//          ),
//        ),
//      )
//    );
//  }
//
//  List<Widget> createinputs() {
//    return [
//      SizedBox(
//        height: 20.0,
//      ),
//      logo(),
//      SizedBox(
//        height: 20.0,
//      ),
//
//      TextFormField(
//        decoration: InputDecoration(labelText: "Email"),
//        validator: (value){
//          if (value.isEmpty) {
//            return 'Please enter some text';
//          }
//          return null;
////          return value.isEmpty ? "Email is requird" : null;
//        },
//        onSaved: (value){
//          return email = value;
//        },
//      ),
//      SizedBox(
//        height: 20.0,
//      ),
//      TextFormField(
//        decoration: InputDecoration(labelText: "Password"),
//        validator: (value){
//              if (value.isEmpty) {
//              return 'Please enter some text';
//              }
//              return null;
//        },
//        onSaved: (value){
//          return password = value;
//        },
//
//      ),
//      SizedBox(
//        height: 20.0,
//      ),
//      RaisedButton(
//        onPressed: () {
//          _submit();
//
//        },
//        child: Text("Login"),
//      ),
//      SizedBox(
//        height: 20.0,
//      ),
//      FlatButton(onPressed: () {
//        movetoRegister();
//      }, child: Text("Dont Have A account"))
//    ];
//  }
//
//  Widget logo() {
//    return new Hero(
//        tag: 'logo',
//        child:Padding(
//            padding: EdgeInsets.symmetric(horizontal: 74.0),
//          child:  CircleAvatar(
//            //backgroundColor: Colors.transparent,
//            maxRadius: 100.0,
//            minRadius: 10,
//            backgroundImage: AssetImage("assests/Images/Chickenbbay.jpg"),
//          ),
//        )
//    );
//  }

//  TextFormField formField(String text,String key){
//    return TextFormField(
//      decoration: InputDecoration(
//          labelText: "$text"
//      ),
//      onChanged: (value){
//        print("Value change ");
//      },
//      //controller: textEditingController,
//      validator: (value){
//       if(key=='email'){
//          return !value.contains("@") ? "Not a Valid Email" : null;
//        }
//        else{
//          return !value.contains("@") ? "Not a Valid Password" : null;
//        }
//     },
//      onSaved: (value){
//        if(key == 'email'){
//          return email = value;
//        }
//        else{
//          return password = value;
//        }
//      },
//
//    );
//  }


//  void _submit(){
//    if(_formkey.currentState.validate()){
//      _formkey..currentState.save();
//      print(email);
//      print(password);
//    }
//  }

//}

class Question{
  String questionText;
  String questionAnswer;

  Question(this.questionText, this.questionAnswer);


}
