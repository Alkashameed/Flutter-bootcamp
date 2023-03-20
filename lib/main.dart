import 'package:flutter/material.dart';
void main() {
  runApp(const LoginPage());
}
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("LOGIN PAGE")),
          backgroundColor: Color.fromARGB(255, 17, 132, 220),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text(" LOGIN TO CONTINUE")),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: " Enter Username",
                  prefixIcon: Icon(Icons.verified_user_rounded),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: " Enter password",
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text("Forgot password?")),
                ],
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 20, 175, 226),
                      Color.fromARGB(255, 8, 15, 230),
                      Color.fromARGB(255, 20, 175, 226)
                    ])),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 25, letterSpacing: 3, color: Color.fromARGB(248, 19, 18, 18)),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: Divider(
                  height: 10,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Create an account ? "),
                  TextButton(
                    onPressed: () {
                      print("tapped register");
                    },
                    child: Text(
                      "New Account",
                      style: TextStyle(color: Color.fromARGB(255, 14, 43, 229)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}