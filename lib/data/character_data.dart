import 'package:flame/components.dart';
import 'package:haki_rpg/flame/models/character_model.dart';

import 'image_data.dart';

final luffy = CharacterModel(
  scale: 0.25,
  idle: SpriteModel(
    image: luffyV2Idle,
    size: Vector2(26, 67),
    amount: 3,
    stepTime: 0.3,
    amountPerRow: 1,
    time: 0.5,
  ),
  run: SpriteModel(
    image: luffyV2Run,
    size: Vector2(59, 58),
    amount: 8,
    stepTime: 0.1,
    time: 0.5,
  ),
  hit: SpriteModel(
    image: luffyV2Hit1,
    size: Vector2(190, 58),
    amount: 13,
    stepTime: 0.1,
    amountPerRow: 1,
    time: 1.3,
    loop: false,
  ),
  defense: SpriteModel(
    image: luffyV2Defense,
    size: Vector2(51, 48),
    amount: 1,
    stepTime: 0.5,
    time: 0,
    loop: false,
  ),
);

final buggy = CharacterModel(
  scale: 0.288,
  idle: SpriteModel(
    image: buggyIdle,
    size: Vector2(44, 58),
    amount: 4,
    stepTime: 0.2,
    time: 0.5,
  ),
  run: SpriteModel(
    image: buggyRun,
    size: Vector2(61, 61),
    amount: 8,
    stepTime: 0.1,
    time: 0.5,
  ),
  hit: SpriteModel(
    image: buggyHit1,
    size: Vector2(106, 59),
    amount: 8,
    stepTime: 0.1,
    time: 0.8,
    loop: false,
  ),
  defense: SpriteModel(
    image: buggyDefense,
    size: Vector2(76, 73),
    amount: 2,
    stepTime: 0.5,
    time: 0,
    loop: false,
  ),
);
