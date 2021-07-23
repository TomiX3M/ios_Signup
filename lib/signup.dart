import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, top: 5),
                  child: Text('Create your account',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2)),
                ),
                CupertinoFormSection(
                    header: Text('Personal Details'),
                    children: [
                      CupertinoFormRow(
                        child: CupertinoTextFormFieldRow(
                          placeholder: 'Enter Your Name',
                        ),
                        prefix: Text('Name'),
                      ),
                      CupertinoFormRow(
                        child: CupertinoTextFormFieldRow(
                          placeholder: 'Enter Phone Number',
                        ),
                        prefix: Text('Phone'),
                      ),
                    ]),
                CupertinoFormSection(header: Text('User'), children: [
                  CupertinoFormRow(
                    child: CupertinoTextFormFieldRow(
                      placeholder: 'Enter Email',
                    ),
                    prefix: Text('Email'),
                  ),
                  CupertinoFormRow(
                    child: CupertinoTextFormFieldRow(
                      obscureText: true,
                    ),
                    prefix: Text('Password'),
                  ),
                  CupertinoFormRow(
                    child: CupertinoTextFormFieldRow(
                      obscureText: true,
                    ),
                    prefix: Text('Confirm Password'),
                  ),
                ]),
                CupertinoFormSection(
                    header: Text('Terms and Conditions'),
                    children: [
                      CupertinoFormRow(
                          prefix: Text('I Agree'),
                          child:
                              CupertinoSwitch(value: true, onChanged: (e) {}))
                    ]),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: MaterialButton(
                      color: Colors.purple,
                      height: 50,
                      minWidth: 120,
                      elevation: 3,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
