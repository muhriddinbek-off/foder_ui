import 'package:flutter/material.dart';
import 'package:foder_ui/bloc/category/category_bloc.dart';
import 'package:foder_ui/bloc/navigate/navigate_page_bloc.dart';
import 'package:foder_ui/ui/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => NavigatePageBloc()),
      BlocProvider(create: (context) => CategoryBloc()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.navigateScreen,
      onGenerateRoute: AppRoutes.generatedRoute,
    );
  }
}
