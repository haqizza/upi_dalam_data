import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
     TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   return MaterialApp(
     title: 'Login',
     home: Scaffold(
       appBar: AppBar(
         title: const Text('Login'),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             //gambar dan @userid
             Center(
                 child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Container(
                       padding: const EdgeInsets.all(10),
                       child: Image.asset(
                         "image/logo.png",
                         width: 150,
                       )),
                   
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Lupa Password?',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            

                 ])),
           ],
         ),
       ),
     ),
   );
 }
}