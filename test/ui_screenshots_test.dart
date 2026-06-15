import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:demo_calculator/screens/log_in_screen.dart';
import 'package:demo_calculator/screens/sign_up_screen.dart';
import 'package:demo_calculator/screens/home_screen.dart';

void main() {
  testWidgets('Golden screenshot: Login screen', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: LoginPage(), debugShowCheckedModeBanner: false),
    );

    await expectLater(
      find.byType(LoginPage),
      matchesGoldenFile('goldens/login_screen.png'),
    );
  });

  testWidgets('Golden screenshot: Sign up screen', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: SignUpPage(), debugShowCheckedModeBanner: false),
    );

    await expectLater(
      find.byType(SignUpPage),
      matchesGoldenFile('goldens/sign_up_screen.png'),
    );
  });

  testWidgets('Golden screenshot: Home screen', (tester) async {
    await tester.pumpWidget(
      MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false),
    );

    await expectLater(
      find.byType(HomePage),
      matchesGoldenFile('goldens/home_screen.png'),
    );
  });
}
