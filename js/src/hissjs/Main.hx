package hissjs;

import hiss.CCInterp;

import hissjs.express.Express;

class Main {	
    static function main() {
        var interp = new CCInterp();
        var args = Sys.args();
        var fallthroughArgs = [];
        while (args.length > 0) {
            var arg = args.shift();
            switch (arg) {
                case "-lib":
                    switch (args.shift()) {
                        case "express":
                            interp.importClass(Express, "Express");
                            interp.load("src/hissjs/express/api.hiss");
                    }
                default:
                    fallthroughArgs.push(arg);
            }
        }
        trace(args);
        CCInterp.run(interp, fallthroughArgs);
    }
}