import 'package:flame/components.dart';
import 'package:haki_rpg/flame/models/character_model.dart';

import 'image_data.dart';

final luffy = CharacterModel(
  image: luffyV2Idle,
  scale: 0.25,
  size: Vector2(80, 77),
  amount: 3,
  stepTime: 0.3,
);

final buggy = CharacterModel(
  image: buggyIdle,
  scale: 0.288,
  size: Vector2(44, 58),
  amount: 4,
  stepTime: 0.2,
);
