import 'package:flutter/material.dart';
import 'package:login_register2/widgets/login.dart';
import 'package:login_register2/widgets/register.dart';

class PageViewThing extends StatefulWidget {
  const PageViewThing({super.key});
  @override
  State<PageViewThing> createState() {
    return _StatePageViewThing();
  }
}

class _StatePageViewThing extends State<PageViewThing> {
  final PageController _pageConroller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Calisthenic App'),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _pageConroller,
          children: const [Login(), Register()],
        ),
      ),
    );
  }
}
