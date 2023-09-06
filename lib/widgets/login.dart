import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register2/widgets/pricipal_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    void swicthScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) {
            return const PricipalPage();
          },
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //the image
                    Image.asset(
                      'images/belier2.png',
                      width: 150,
                      height: 150,
                      color: const Color.fromARGB(174, 0, 0, 0),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //text of the application
                    Text(
                      'Cali Rams',
                      style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    //textfielad for email
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          hintText: 'Email',
                          fillColor: const Color.fromARGB(33, 238, 238, 238),
                          filled: true,
                        ),
                      ),
                    ),
                    //textfield for password
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color:
                                    Theme.of(context).colorScheme.background),
                          ),
                          hintText: 'PassWord',
                          fillColor: const Color.fromARGB(33, 238, 238, 238),
                          filled: true,
                        ),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //button for sign up
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: swicthScreen,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(174, 0, 0, 0),
                          ),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //text for register
                          RichText(
                            text: const TextSpan(
                              text: 'Not A Member ? ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'SlideDown',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 131, 15, 7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //button to go to the register or icon
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color.fromARGB(255, 131, 15, 7),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
