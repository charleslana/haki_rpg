import 'package:flame/components.dart';

class CharacterModel {
  final double scale;
  final SpriteModel idle;
  final SpriteModel run;

  const CharacterModel({
    required this.scale,
    required this.idle,
    required this.run,
  });
}

class SpriteModel {
  final String image;
  final Vector2 size;
  final int amount;
  final double stepTime;
  final int? amountPerRow;
  final bool loop;

  const SpriteModel({
    required this.image,
    required this.size,
    required this.amount,
    required this.stepTime,
    this.amountPerRow,
    this.loop = true,
  });
}