import 'package:flutter/material.dart';
import 'package:chat_app2/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:chat_app2/pages/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat_app2/cubit/profiles/profiles_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://jltdmknshhnqlczpqmru.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpsdGRta25zaGhucWxjenBxbXJ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODIwNzIxOTcsImV4cCI6MTk5NzY0ODE5N30.LJUNbXkGbpekExRxVy6YT-7GUHi0roKh1niFQ971-Sc',
    authCallbackUrlHostname: 'login',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfilesCubit>(
      create: (context) => ProfilesCubit(),
      child: MaterialApp(
        title: 'SupaChat',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: const SplashPage(),
      ),
    );
  }
}