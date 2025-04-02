import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workly/route/route_name.dart';
import 'package:workly/util/assets/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      fetchData();
    });
  }

  Future<void> fetchData() async {
    /// check logged in or not and Navigate
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      context.go(RouteName.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset(Assets.logo, width: 200)));
  }
}
