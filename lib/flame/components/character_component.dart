import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:haki_rpg/flame/battle_game.dart';
import 'package:haki_rpg/flame/models/character_model.dart';

class CharacterComponent extends SpriteAnimationComponent
    with HasGameRef<BattleGame> {
  final CharacterModel character;
  final bool isFlip;

  CharacterComponent({
    required this.character,
    this.isFlip = false,
  });

  final SpriteAnimationComponent _spriteAnimationComponent =
      SpriteAnimationComponent();

  @override
  Future<void>? onLoad() async {
    debugMode = true;

    await setIdleAnimation();

    scale = Vector2.all(gameRef.size.y * character.scale / 100);

    anchor = Anchor.bottomLeft;

    if (isFlip) {
      anchor = Anchor.bottomRight;
      flipHorizontally();
    }

    await add(_spriteAnimationComponent);
    return super.onLoad();
  }

  Future<void> setIdleAnimation() async {
    final spriteSheet = await Images(prefix: "").load(
      character.idle.image,
    );

    final spriteSize = character.idle.size;

    SpriteAnimationData spriteAnimationData = SpriteAnimationData.sequenced(
      amount: character.idle.amount,
      stepTime: character.idle.stepTime,
      textureSize: spriteSize,
      amountPerRow: character.idle.amountPerRow,
    );

    final spriteAnimation = SpriteAnimationComponent.fromFrameData(
        spriteSheet, spriteAnimationData);

    _spriteAnimationComponent
      ..animation = spriteAnimation.animation
      ..size = spriteSize;

    size = spriteSize;
  }

  Future<void> setRunningAnimation() async {
    final spriteSheet = await Images(prefix: "").load(
      character.run.image,
    );
    final spriteSize = character.run.size;

    SpriteAnimationData spriteAnimationData = SpriteAnimationData.sequenced(
      amount: character.run.amount,
      stepTime: character.run.stepTime,
      textureSize: spriteSize,
      amountPerRow: character.run.amountPerRow,
      loop: true,
    );

    final spriteAnimation = SpriteAnimationComponent.fromFrameData(
        spriteSheet, spriteAnimationData);

    _spriteAnimationComponent
      ..animation = spriteAnimation.animation
      ..size = spriteSize;

    size = spriteSize;
  }
}
