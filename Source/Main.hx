package;

import openfl.events.Event;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.display.Tilesheet;
import openfl.geom.Rectangle;
import openfl.Assets;

class Main extends Sprite {
    var tilesheet:Tilesheet;
    var thing:Thing;
    public function new () {
        super();
        tilesheet = new Tilesheet(Assets.getBitmapData("assets/guy.png"));
        tilesheet.addTileRect(new Rectangle(0, 0, 32, 32));
        tilesheet.addTileRect(new Rectangle(32, 0, 32, 32));
        tilesheet.addTileRect(new Rectangle(64, 0, 32, 32));
        tilesheet.addTileRect(new Rectangle(96, 0, 32, 32));
        tilesheet.addTileRect(new Rectangle(0, 32, 32, 32));
        tilesheet.addTileRect(new Rectangle(32, 32, 32, 32));
        tilesheet.addTileRect(new Rectangle(64, 32, 32, 32));
        tilesheet.addTileRect(new Rectangle(96, 32, 32, 32));
        thing = new Thing();
        this.addEventListener(Event.ENTER_FRAME, everyFrame);
    }

    private function everyFrame(event:Event):Void {
        thing.update();
        tilesheet.drawTiles(this.graphics, [0, 0, thing.getTile()]);
    }
}
