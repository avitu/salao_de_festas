import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:salao_de_festas00/models/app_routes.dart';
import 'package:salao_de_festas00/provider/users.dart';
import 'package:salao_de_festas00/screens/teladealuguel.dart';
import 'screens/telainicial.dart';

void main() {
  initializeDateFormatting().then((_) =>
  runApp(MyApp()));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  return MultiProvider(
      providers: [
        ChangeNotifierProvider(
      create: (ctx) => Users(),
        )
    ],

        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Salão de Festas',
          theme: ThemeData(
          primarySwatch: Colors.blue,
          ),

          routes: {
            AppRoutes.HOME: (_) => const TelaInicial(),
            AppRoutes.USER_FORM: (_) => TeladeAluguel(),
          },
    ),
  );
  }
}