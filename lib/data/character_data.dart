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
  ),
  run: SpriteModel(
    image: luffyV2Run,
    size: Vector2(59, 58),
    amount: 8,
    stepTime: 0.1,
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
  ),
  run: SpriteModel(
    image: buggyRun,
    size: Vector2(61, 61),
    amount: 8,
    stepTime: 0.1,
    loop: false,
  ),
);
