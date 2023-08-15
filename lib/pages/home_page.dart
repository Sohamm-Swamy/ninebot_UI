import 'package:flutter/material.dart';
import 'package:ninebot/components/bottom_section.dart';
import 'package:ninebot/components/middle_section.dart';
import 'package:ninebot/components/top_section.dart';
import 'package:ninebot/utils/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDark,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  TopSection(),
                  BottomSection(),
                ],
              ),
              MiddleSection(),
            ],
          ),
        ),
      ),
    );
  }
}
