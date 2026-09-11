import 'package:flutter/material.dart';
import 'package:flutter_custom_toast_snackbar/flutter_custom_toast_snackbar.dart';

void main() {
  runApp(const ToastSnackbarExampleApp());
}

class ToastSnackbarExampleApp extends StatelessWidget {
  const ToastSnackbarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Toast & SnackBar',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showRoundedToast(BuildContext context) {
    CustomToast.show(
      context,
      message: 'Saved successfully!',
      icon: Icons.check_circle,
      backgroundColor: Colors.green,
      shape: ToastShape.rounded,
    );
  }

  void showPillToast(BuildContext context) {
    CustomToast.show(
      context,
      message: 'Profile updated!',
      icon: Icons.person,
      backgroundColor: Colors.blue,
      shape: ToastShape.pill,
    );
  }

  void showSquareToast(BuildContext context) {
    CustomToast.show(
      context,
      message: 'Something went wrong!',
      icon: Icons.error,
      backgroundColor: Colors.red,
      shape: ToastShape.square,
    );
  }

  void showSnackBar(BuildContext context) {
    CustomSnackBar.show(
      context,
      message: 'This is a custom SnackBar',
      icon: Icons.notifications,
      backgroundColor: Colors.deepPurple,
      shape: SnackBarShape.pill,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Toast & SnackBar'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Custom Toast',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showRoundedToast(context);
                },
                child: const Text('Rounded Toast'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  showPillToast(context);
                },
                child: const Text('Pill Toast'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  showSquareToast(context);
                },
                child: const Text('Square Toast'),
              ),
              const SizedBox(height: 35),
              const Text(
                'Custom SnackBar',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showSnackBar(context);
                },
                child: const Text('Show SnackBar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}