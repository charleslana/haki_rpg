import 'dart:async';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:haki_rpg/data/character_data.dart';
import 'package:haki_rpg/flame/components/character_component.dart';
import 'package:haki_rpg/flame/components/character_position_component.dart';

import '../data/character_position_data.dart';

class BattleGame extends FlameGame {
  late CharacterComponent _character;
  late CharacterPositionComponent _characterPosition;

  @override
  Color backgroundColor() => Colors.white;

  @override
  FutureOr<void> onLoad() async {
    _character = CharacterComponent(character: luffy);
    _characterPosition = CharacterPositionComponent(
      character: _character,
      pos: position_ally_x_1,
    );
    await add(_characterPosition);
    return super.onLoad();
  }
}
