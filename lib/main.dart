import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:salao_de_festas00/models/app_routes.dart';
import 'package:salao_de_festas00/provider/reservas_provider.dart';
import 'package:salao_de_festas00/screens/teladealuguel.dart';
import 'package:salao_de_festas00/screens/teladealuguel02.dart';
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
      create: (ctx) => ReservaListProvider(),
        )
    ],

        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Salão de Festas',
          theme: ThemeData(
          primarySwatch: Colors.blue,
          ),

          routes: {
            AppRoutes.HOME: (_) => TelaInicial(),
            AppRoutes.RESERVA_FORM: (_) => TeladeAluguel(),
          },
    ),
  );
  }
}