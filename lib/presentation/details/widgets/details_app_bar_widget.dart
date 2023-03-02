import 'package:flutter/material.dart';
import 'package:pokemon/common/constraints/pokemon_color_constraints.dart';
import 'package:pokemon/common/models/pokemon_model.dart';

class DetailsAppBarWidget extends StatelessWidget {
  const DetailsAppBarWidget({
    super.key,
    required this.pokemon,
    required this.onBack,
  });

  final Pokemon pokemon;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AppBar(
        elevation: 0,
        backgroundColor: PokemonColorConstraints.color(type: pokemon.type[0]),
        leading: IconButton(
          onPressed: onBack,
          icon: const Icon(Icons.chevron_left),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
