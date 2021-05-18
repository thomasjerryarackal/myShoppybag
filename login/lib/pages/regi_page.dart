import 'package:flutter/material.dart';
import 'package:login/widgets/btn_widget.dart';
import 'package:login/widgets/herder_container.dart';

import 'login_page.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Register"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(hint: "Fullname", icon: Icons.person),
                    _textInput(hint: "Email", icon: Icons.email),
                    _textInput(hint: "Phone Number", icon: Icons.call),
                    _textInput(hint: "Password", icon: Icons.vpn_key),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          btnText: "REGISTER",
                          onClick: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Already a member ? ",
                                style: TextStyle(color: Colors.black,fontSize: 15.0)),
                            
                          ]),
                        ),
                        OutlineButton(
                      child: Text("LOGIN", style: TextStyle(fontSize: 15.0),),  
                      highlightedBorderColor: Colors.red,  
                      shape: RoundedRectangleBorder(  
                      borderRadius: BorderRadius.circular(15)),  
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                }, 
                      
                    ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }

}
