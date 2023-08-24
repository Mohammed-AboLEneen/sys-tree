import 'package:flutter/material.dart';
import 'package:systree/features/authentication/presentation/view/widgets/register_body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: RegisterPageBody(),
    );
  }
}