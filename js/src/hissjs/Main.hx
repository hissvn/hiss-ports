package hissjs;

import hiss.CCInterp;
import hiss.StaticFiles;

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
                            StaticFiles.compileWith("express/api.hiss");
                            interp.load("express/api.hiss");
                    }
                default:
                    fallthroughArgs.push(arg);
            }
        }
        CCInterp.run(interp, fallthroughArgs);
    }
}