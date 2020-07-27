package hissjs;

import hiss.CCInterp;

import hissjs.express.Express;

class Main {	
    static function main() {
        var interp = new CCInterp();
        var args = Sys.args();
        while (args.length > 0) {
            var arg = args.shift();
            switch (arg) {
                case "-lib":
                    switch (args.shift()) {
                        case "express":
                            interp.importClass(Express, "Express");
                            interp.load("src/hissjs/express/api.hiss");
                    }
            }
        }
        interp.load("src/hissjs/main.hiss");
    }
}