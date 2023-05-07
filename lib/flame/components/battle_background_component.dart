import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:haki_rpg/data/image_data.dart';
import 'package:haki_rpg/flame/battle_game.dart';

class BattleBackgroundComponent extends PositionComponent
    with HasGameRef<BattleGame> {
  @override
  Future<void>? onLoad() async {
    final component = SpriteComponent()
      ..sprite = await Sprite.load(stage1, images: Images(prefix: ""))
      ..size = gameRef.size;

    await add(component);
    return super.onLoad();
  }
}
