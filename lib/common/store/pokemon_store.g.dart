// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonStore on PokemonStoreBase, Store {
  late final _$allPokemonsAtom =
      Atom(name: 'PokemonStoreBase.allPokemons', context: context);

  @override
  List<Pokemon> get allPokemons {
    _$allPokemonsAtom.reportRead();
    return super.allPokemons;
  }

  @override
  set allPokemons(List<Pokemon> value) {
    _$allPokemonsAtom.reportWrite(value, super.allPokemons, () {
      super.allPokemons = value;
    });
  }

  late final _$pokemonsFilteredAtom =
      Atom(name: 'PokemonStoreBase.pokemonsFiltered', context: context);

  @override
  List<Pokemon> get pokemonsFiltered {
    _$pokemonsFilteredAtom.reportRead();
    return super.pokemonsFiltered;
  }

  @override
  set pokemonsFiltered(List<Pokemon> value) {
    _$pokemonsFilteredAtom.reportWrite(value, super.pokemonsFiltered, () {
      super.pokemonsFiltered = value;
    });
  }

  late final _$pokemonNameFilterAtom =
      Atom(name: 'PokemonStoreBase.pokemonNameFilter', context: context);

  @override
  String get pokemonNameFilter {
    _$pokemonNameFilterAtom.reportRead();
    return super.pokemonNameFilter;
  }

  @override
  set pokemonNameFilter(String value) {
    _$pokemonNameFilterAtom.reportWrite(value, super.pokemonNameFilter, () {
      super.pokemonNameFilter = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'PokemonStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$fetchPokemonsAsyncAction =
      AsyncAction('PokemonStoreBase.fetchPokemons', context: context);

  @override
  Future<List<Pokemon>> fetchPokemons() {
    return _$fetchPokemonsAsyncAction.run(() => super.fetchPokemons());
  }

  late final _$PokemonStoreBaseActionController =
      ActionController(name: 'PokemonStoreBase', context: context);

  @override
  List<Pokemon> getPokemonFiltered({required String pokemonName}) {
    final _$actionInfo = _$PokemonStoreBaseActionController.startAction(
        name: 'PokemonStoreBase.getPokemonFiltered');
    try {
      return super.getPokemonFiltered(pokemonName: pokemonName);
    } finally {
      _$PokemonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPokemons(dynamic value) {
    final _$actionInfo = _$PokemonStoreBaseActionController.startAction(
        name: 'PokemonStoreBase.setPokemons');
    try {
      return super.setPokemons(value);
    } finally {
      _$PokemonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPokemonsFiltered(dynamic value) {
    final _$actionInfo = _$PokemonStoreBaseActionController.startAction(
        name: 'PokemonStoreBase.setPokemonsFiltered');
    try {
      return super.setPokemonsFiltered(value);
    } finally {
      _$PokemonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPokemonNameFilter(String value) {
    final _$actionInfo = _$PokemonStoreBaseActionController.startAction(
        name: 'PokemonStoreBase.setPokemonNameFilter');
    try {
      return super.setPokemonNameFilter(value);
    } finally {
      _$PokemonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$PokemonStoreBaseActionController.startAction(
        name: 'PokemonStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$PokemonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
allPokemons: ${allPokemons},
pokemonsFiltered: ${pokemonsFiltered},
pokemonNameFilter: ${pokemonNameFilter},
isLoading: ${isLoading}
    ''';
  }
}
