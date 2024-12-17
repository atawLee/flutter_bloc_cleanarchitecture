import 'package:flutter/material.dart';
import 'package:testapp/configuration.dart';
import 'package:testapp/features/todo/presentation/bloc/bloc/todo_bloc.dart';
import 'package:testapp/features/todo/presentation/pages/todo_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  runApp(
    BlocProvider(
      create: (context) => TodoBloc(sl()),
      child: MaterialApp(
        home: MyApp(),
      ),
    ),
  );
}
