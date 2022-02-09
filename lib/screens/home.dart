
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffFFFCF4),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              Container(
                width: width,
                height: height * 0.35,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: width * 0.7,
                        height: height * 0.28,
                        decoration: const BoxDecoration(
                          color: Color(0xff52A3D0),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(180.0),
                            bottomRight: Radius.circular(180.0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -25,
                      child: Container(
                        width: width * 0.45,
                        height: height * 0.35,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(180.0),
                              bottomRight: Radius.circular(180.0),
                            ),
                            color: Color(0xffFFFCF4)),
                      ),
                    ),
                    Positioned(
                      top: -15,
                      child: Container(
                        width: 50,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xff52A3D0),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                 LogoMsg(text: 'Apprax',)
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  width: width * 0.7,
                  height: height * 0.35,
                  child: Column(
                    children: [
                      const Text(
                        'Conecte-se',
                        style:
                            TextStyle(color: Color(0xff444444), fontSize: 36.0),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10)),
                      FormLogin(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            child: const Text('Esqueceu a senha?'),
                            onTap: () => print('forgot Acess'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 120,
                        child: ElevatedButton(
                          child: const Text('Acessar'),
                          onPressed: () => print('Login'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.3,
                    height: 1,
                    decoration: const BoxDecoration(color: Colors.blue),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: width * 0.3,
                    child: const Text(
                      'Ou então',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff444444),
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    width: width * 0.3,
                    height: 1,
                    decoration: const BoxDecoration(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                width: width,
                height: height * 0.22,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 46,
                      width: 220,
                      child: ElevatedButton(
                        child: const Text('Acessar com Google'),
                        onPressed: () => print('Login'),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    SizedBox(
                      height: 46,
                      width: 220,
                      child: ElevatedButton(
                        child: const Text('Acessar com Facebook'),
                        onPressed: () => print('Login'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class FormLogin extends StatefulWidget {
  FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter your Email',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter your Password',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

class LogoMsg extends StatelessWidget {
  final String text;
  const LogoMsg({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
                      alignment: Alignment.center,
                      child: Stack(children: [
                        SvgPicture.asset('assets/logo.svg'),
                        Positioned(
                          right: 10,
                          top: 30,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Padding(
                                  padding: const EdgeInsets.only(left:58.0),
                                  child: Text(
                                    text,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 32.0),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *0.6,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:59.0),
                                    child: Text(
                                        "Um app para axiliar pessoas com apraxia na fala"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    );
  }
}
