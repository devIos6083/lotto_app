import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:login/widget/my_textfield.dart';
import 'package:login/widget/my_container.dart';
import 'package:login/lotter_app/lotto.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Text(
                    "Current width : ${currentWidth.toString()}",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'img/codingchef.png',
                    width: 150,
                    height: 150,
                  ).animate().shake(
                        hz: 4,
                        curve: Curves.easeInOutCubic,
                        duration: 1800.ms,
                      ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Welcome back",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                      .animate()
                      .fade(delay: 500.ms)
                      .slideY(
                        begin: -2,
                        end: 0,
                      )
                      .tint(color: Colors.purple, delay: 1000.ms),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Sign in to continue",
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ).animate().fade(delay: 500.ms).slideX(begin: 2, end: 0),
                  SizedBox(
                    height: 25,
                  ),
                  MyTextfield(
                    emailType: TextInputType.emailAddress,
                    hintText: "emain@email.com",
                    obscureText: false,
                    controller: emailController,
                  )
                      .animate()
                      .fade()
                      .slideX(begin: -3, end: 0, duration: 900.ms),
                  SizedBox(
                    height: 25,
                  ),
                  MyTextfield(
                    hintText: "123456",
                    obscureText: true,
                    controller: passwordController,
                  ).animate().fade().slideX(begin: 3, end: 0, duration: 900.ms),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (emailController.text == "email@email.com" &&
                          passwordController.text == '123456') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Lotto()));
                      } else if (emailController.text == "email@email.com" &&
                          passwordController.text != '123456') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('비밀번호를 입력하세요'),
                            duration: Duration(seconds: 5),
                          ),
                        );
                      } else if (emailController.text != "email@email.com" &&
                          passwordController.text == '123456') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('이메일을 확인하세요'),
                            duration: Duration(seconds: 5),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('로그인 정보를 확인하세요'),
                            duration: Duration(seconds: 5),
                          ),
                        );
                      }
                    },
                    child: MyContainer(
                            width: 120,
                            height: 50,
                            radius: 26,
                            backgroundColor: Colors.orange[200],
                            icon: Icon(Icons.arrow_forward))
                        .animate()
                        .fade()
                        .slideX(begin: -3, end: 0, duration: 900.ms),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not A Member?",
                        style: TextStyle(
                          color: Colors.grey[900],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Register Now",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                            .animate()
                            .fade()
                            .slideX(begin: 3, end: 0, delay: 300.ms),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Powered By CodingChef",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              )
                                  .animate()
                                  .fade()
                                  .slideX(begin: 3, end: 0, duration: 300.ms),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyContainer(
                            height: 50,
                            width: 50,
                            backgroundColor: Colors.grey[300],
                            imagePath: 'img/codingchef3.png',
                            radius: 16,
                          )
                              .animate()
                              .slideX(begin: 3, end: 0, duration: 300.ms)
                              .animate(
                                  onPlay: (controller) => controller.repeat())
                              .shimmer(delay: 1000.ms, duration: 1800.ms),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
