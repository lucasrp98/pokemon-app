import 'package:flutter/material.dart';

class BaseError extends StatelessWidget {
  const BaseError({super.key, required this.error});
  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(error),
      ),
    );
  }
}