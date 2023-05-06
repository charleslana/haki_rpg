import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:haki_rpg/flame/battle_game.dart';
import 'package:haki_rpg/flame/models/character_model.dart';

class CharacterComponent extends SpriteAnimationComponent with HasGameRef<BattleGame> {
  final CharacterModel character;

  CharacterComponent({
    required this.character,
  });

  @override
  Future<void>? onLoad() async {
    debugMode = false;

    SpriteAnimationComponent spriteAnimationComponent =
        SpriteAnimationComponent();
    final spriteSheet = await Images(prefix: "").load(
      character.image,
    );
    final spriteScale = Vector2.all(gameRef.size.y * character.scale / 100);
    final spriteSize = character.size;

    SpriteAnimationData spriteAnimationData = SpriteAnimationData.sequenced(
      amount: character.amount,
      stepTime: character.stepTime,
      textureSize: spriteSize,
    );
    spriteAnimationComponent =
        SpriteAnimationComponent.fromFrameData(spriteSheet, spriteAnimationData)
          ..size = spriteSize
          ..scale = spriteScale;

    size = spriteSize;
    scale = spriteScale;

    // flipHorizontally();
    // flipHorizontallyAroundCenter();
    await add(spriteAnimationComponent);
    return super.onLoad();
  }
}
