import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/login_page.dart';
import 'package:tugas_pbm_pertemuan_6/constants.dart';
import 'package:tugas_pbm_pertemuan_6/page/home_page.dart';

String username = "";
String password = "";

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static const routeName = "/RegisterPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                _titleDesc(),
                _textfield(),
                _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

    Widget _titleDesc(){
    return Column(
      children: <Widget>[
        Image.asset("/images/reg.png", height: 120.0, width: 150.0,),
        Padding(padding: EdgeInsets.only(top: 16.0),  
        ),
        Text(
          "Halaman Registrasi",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18.0,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 12.0), 
        ),
      ],
    );
  }

  Widget _textfield(){
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 12.0),  
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white70,
                width: 3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white70),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white70,
                width: 3.0,
              ),
            ),
            hintText: "password",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white70),
          obscureText: true,
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white70,
                width: 3.0,
              ),
            ),
            hintText: "ulangi password",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white70),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

    Widget _buildButton(BuildContext context){
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 16.0),
        ),
        ElevatedButton(
          child: Text(
            "Registrasi",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15.0,
            ),
          ), 
          onPressed: (){
            Navigator.pushNamed(context, "/homepage");
          },
        ),
        Padding(padding: EdgeInsets.only(top: 10.0),
        ),
        Text(
          'atau',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 12.0,
          ),
        ),
         ElevatedButton(
          child: Text(
            "Sudah punya akun?",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15.0,
            ),
          ), 
          onPressed: (){
            Navigator.pushNamed(context, "/login");
          },
         ),
      ],
    );
  }
}