import 'package:flame/components.dart';

class CharacterModel {
  final double scale;
  final SpriteModel idle;
  final SpriteModel run;
  final SpriteModel hit;
  final SpriteModel defense;
  final SpriteModel death;

  const CharacterModel({
    required this.scale,
    required this.idle,
    required this.run,
    required this.hit,
    required this.defense,
    required this.death,
  });
}

class SpriteModel {
  final String image;
  final Vector2 size;
  final int amount;
  final double stepTime;
  final int? amountPerRow;
  final bool loop;
  final double time;

  const SpriteModel({
    required this.image,
    required this.size,
    required this.amount,
    required this.stepTime,
    this.amountPerRow,
    this.loop = true,
    required this.time,
  });
}
