import 'package:flutter/material.dart';
import 'package:flutter_get_cli/app/routes/app_pages.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyPageLogin(),
      ),
    );
  }
}

class MyPageLogin extends StatelessWidget {
  const MyPageLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 25.25),
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.10),
          child: Image.asset("assets/logo/logo.png", width: 100, height: 100),
        ),
        Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 10.10, vertical: 20.20),
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: const Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        const MyFormInputLogin(),
        // const MySpinLoad(),
      ],
    );
  }
}

class MyFormInputLogin extends StatefulWidget {
  const MyFormInputLogin({Key? key}) : super(key: key);

  @override
  State<MyFormInputLogin> createState() => _MyFromInputLogin();
}

class _MyFromInputLogin extends State<MyFormInputLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final spinkit = SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Email not required!';
              }
              return null;
            },
            onChanged: (String? value) {
              return;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Password not required!';
              }
              return null;
            },
            onChanged: (String? value) {
              return;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Future.delayed(const Duration(seconds: 1),
                    () => Get.offAllNamed(Routes.HOME));
              }
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text("Login"),
            ),
          )
        ],
      ),
    );
  }
}

// class MySpinLoad extends StatelessWidget {
//   const MySpinLoad({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       fit: StackFit.loose,
//       children: const [
//         SpinKitChasingDots(
//           color: Colors.orange,
//           size: 50.0,
//         )
//       ],
//     );
//   }
// }
