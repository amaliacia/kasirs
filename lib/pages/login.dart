import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Row(
        children: [
          // gambar
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.pink[50],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to\nSeblak Sulthane Kasir App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,  color: Colors.red, fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'login.png', width: 300, height: 300,
                  ),
                ],
              ),
            ),
          ),
          
          //form
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
                      'Login',
                      style: TextStyle(
                        fontSize: 28, color: Colors.red, fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username', hintText: 'email@website.com', border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password', border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text('Remember Password'),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Forgot password?'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          //primary: Colors.red, // background //GAJADI ANJAY
                        ),
                        child: Text('Login'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {},
                          child: Text('Signup'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    Text(
                      'Facing any issue? Get in touch with us.',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 10),
                        Text('seblaksulthane@gmail.com'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 10),
                        Text('01234 5XXX78'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
