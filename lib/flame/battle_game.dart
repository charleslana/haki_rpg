import 'dart:async';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:haki_rpg/data/character_data.dart';
import 'package:haki_rpg/flame/components/battle_background_component.dart';
import 'package:haki_rpg/flame/components/character_component.dart';
import 'package:haki_rpg/flame/components/character_position_component.dart';

import '../data/character_position_data.dart';

class BattleGame extends FlameGame {
  late CharacterComponent _character1;
  late CharacterComponent _character2;
  late CharacterComponent _character3;
  late CharacterComponent _character4;
  late CharacterComponent _character5;
  late CharacterComponent _character6;

  late CharacterComponent _enemy1;
  late CharacterComponent _enemy2;
  late CharacterComponent _enemy3;
  late CharacterComponent _enemy4;
  late CharacterComponent _enemy5;
  late CharacterComponent _enemy6;

  late CharacterPositionComponent _characterPosition1;
  late CharacterPositionComponent _characterPosition2;
  late CharacterPositionComponent _characterPosition3;
  late CharacterPositionComponent _characterPosition4;
  late CharacterPositionComponent _characterPosition5;
  late CharacterPositionComponent _characterPosition6;

  late CharacterPositionComponent _enemyPosition1;
  late CharacterPositionComponent _enemyPosition2;
  late CharacterPositionComponent _enemyPosition3;
  late CharacterPositionComponent _enemyPosition4;
  late CharacterPositionComponent _enemyPosition5;
  late CharacterPositionComponent _enemyPosition6;

  @override
  Color backgroundColor() => Colors.white;

  @override
  FutureOr<void> onLoad() async {
    await add(BattleBackgroundComponent());

    _character1 = CharacterComponent(character: luffy);
    _character2 = CharacterComponent(character: luffy);
    _character3 = CharacterComponent(character: luffy);
    _character4 = CharacterComponent(character: luffy);
    _character5 = CharacterComponent(character: luffy);
    _character6 = CharacterComponent(character: luffy);

    _enemy1 = CharacterComponent(character: buggy, isFLip: true);
    _enemy2 = CharacterComponent(character: buggy, isFLip: true);
    _enemy3 = CharacterComponent(character: buggy, isFLip: true);
    _enemy4 = CharacterComponent(character: buggy, isFLip: true);
    _enemy5 = CharacterComponent(character: buggy, isFLip: true);
    _enemy6 = CharacterComponent(character: buggy, isFLip: true);

    _characterPosition1 = CharacterPositionComponent(
      character: _character1,
      positionX: positionAllyX1,
      positionY: positionAllyY1,
    );

    _characterPosition2 = CharacterPositionComponent(
      character: _character2,
      positionX: positionAllyX2,
      positionY: positionAllyY2,
    );

    _characterPosition3 = CharacterPositionComponent(
      character: _character3,
      positionX: positionAllyX3,
      positionY: positionAllyY3,
    );

    _characterPosition4 = CharacterPositionComponent(
      character: _character4,
      positionX: positionAllyX4,
      positionY: positionAllyY4,
    );

    _characterPosition5 = CharacterPositionComponent(
      character: _character5,
      positionX: positionAllyX5,
      positionY: positionAllyY5,
    );

    _characterPosition6 = CharacterPositionComponent(
      character: _character6,
      positionX: positionAllyX6,
      positionY: positionAllyY6,
    );

    _enemyPosition1 = CharacterPositionComponent(
      character: _enemy1,
      positionX: positionEnemyX1,
      positionY: positionEnemyY1,
    );

    _enemyPosition2 = CharacterPositionComponent(
      character: _enemy2,
      positionX: positionEnemyX2,
      positionY: positionEnemyY2,
    );

    _enemyPosition3 = CharacterPositionComponent(
      character: _enemy3,
      positionX: positionEnemyX3,
      positionY: positionEnemyY3,
    );

    _enemyPosition4 = CharacterPositionComponent(
      character: _enemy4,
      positionX: positionEnemyX4,
      positionY: positionEnemyY4,
    );

    _enemyPosition5 = CharacterPositionComponent(
      character: _enemy5,
      positionX: positionEnemyX5,
      positionY: positionEnemyY5,
    );

    _enemyPosition6 = CharacterPositionComponent(
      character: _enemy6,
      positionX: positionEnemyX6,
      positionY: positionEnemyY6,
    );

    await add(_characterPosition1);
    await add(_characterPosition2);
    await add(_characterPosition3);
    await add(_characterPosition4);
    await add(_characterPosition5);
    await add(_characterPosition6);

    await add(_enemyPosition1);
    await add(_enemyPosition2);
    await add(_enemyPosition3);
    await add(_enemyPosition4);
    await add(_enemyPosition5);
    await add(_enemyPosition6);
    return super.onLoad();
  }
}
