import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon/common/repository/pokemon_repository.dart';
import 'package:pokemon/common/store/pokemon_store.dart';
import 'package:pokemon/presentation/routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MultiProvider(
      providers: [
        Provider<PokemonStore>(
          create: (_) => PokemonStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Pokemon',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: GoogleFonts.poppinsTextTheme(textTheme),
        ),
        home: Routes(
          repository: PokemonRepository(
            dio: Dio(),
          ),
        ),
      ),
    );
  }
}


