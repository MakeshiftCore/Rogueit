package;

enum Tiles {
    guyStandSouth;
    guyStandNorth;
    guyStandEast;
    guyStandWest;
    guyWalkSouth;
    guyWalkNorth;
    guyWalkEast;
    guyWalkWest;
}

class Animation {
    var currentFrame:Int;
    var ticksPerFrame:Int;
    var ticksElapsed:Int;
    var frames:Array<Int>;
    public var tileId:Int;
    var started:Bool;

    public function new (frames:Array<Int>, ticksPerFrame:Int) {
        this.frames = frames;
        this.ticksPerFrame = ticksPerFrame;
        started = false;
        ticksElapsed = 0;
        currentFrame = 0;
    }

    public function start() {
        if (this.started == false) {
            currentFrame = 0;
            tileId = frames[currentFrame];
            this.started = true;
        }
    }

    public function stop() {
        this.started = false;
    }

    public function update() {
        ticksElapsed++;
        if (ticksElapsed > ticksPerFrame) {
            ticksElapsed = 0;
            currentFrame++;
            if (currentFrame >= frames.length) {
                currentFrame = 0;
            }
            tileId = frames[currentFrame];
        }
    }
}
