package;

import openfl.events.Event;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.display.Tilesheet;
import openfl.geom.Rectangle;
import openfl.Assets;

class Thing extends Sprite {
    var animations:Map<String, Animation>;
    var currentAnimation:Animation;
    var tilesheet:Tilesheet;

    public function new () {
        super();
        animations = new Map();
        animations.set("walk", new Animation([0, 4], 10));
        animations.set("walk2", new Animation([1, 5], 10));
        currentAnimation = animations.get("walk2");
        currentAnimation.start();
    }

    public function update():Void {
        currentAnimation.update();
    }

    public function getTile():Int {
        return currentAnimation.tileId;
    }
}
