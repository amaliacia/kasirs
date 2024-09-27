import 'package:flutter/material.dart';
import 'package:kasirs/pages/login.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Row(
        children: [
          //kiri
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  color: Colors.pink[50],
                  child: Image.asset(
                    'aset/signup.png', fit: BoxFit.cover, height: double.infinity,
                  ),
                ),
                Positioned(
                  top: 40, left: 20,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.red,
                    iconSize: 30,
                    onPressed: () {
                      //back ke sebelumnya
                    },
                  ),
                ),
              ],
            ),
          ),

          //kanan form
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 28, color: Colors.red, fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Full name', hintText: 'Budi Iman', border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username', hintText: 'email@gmail.com', border: OutlineInputBorder(),                        
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          //primary: Colors.red, // background
                        ),
                        child: Text('Create Account'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                          onPressed: () {}, 
                          child: Text('Log in')
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ),
        ],
      ),
    ) ;
  }
}