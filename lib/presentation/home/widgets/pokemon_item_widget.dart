import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokemon/common/constraints/pokemon_color_constraints.dart';
import 'package:pokemon/common/models/pokemon_model.dart';
import 'package:pokemon/presentation/details/container/details_container.dart';
import 'package:pokemon/presentation/home/widgets/pokemon_types_widget.dart';

class PokemonItemWidget extends StatelessWidget {
  const PokemonItemWidget({
    super.key,
    required this.pokemon,
    required this.onTap,
    required this.index,
  });

  final Pokemon pokemon;
  final Function(String, DetailsProps) onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(
        '/details',
        DetailsProps(pokemon: pokemon, index: index, id: pokemon.id),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: PokemonColorConstraints.color(type: pokemon.type[0])
              ?.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      pokemon.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    '#${pokemon.num}',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.3),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: pokemon.type
                        .map((e) => PokemonTypesWidget(type: e))
                        .toList(),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 95,
                      width: 95,
                      child: SvgPicture.network(
                        pokemon.img,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}