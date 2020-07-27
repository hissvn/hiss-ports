package hissjs.express;

import haxe.Constraints.Function;

class Express {
    var instance: NativeExpress;
    public function new() { instance = new NativeExpress(); }
    public function post(route, handler) { instance.post(route, handler); }
    public function get(route, handler) { instance.get(route, handler); }
    public function put(route, handler) { instance.put(route, handler); }
    public function patch(route, handler) { instance.patch(route, handler); }
    public function delete(route, handler) { instance.delete(route, handler); }
    public function use(route, handler) { instance.use(route, handler); }
    public function listen(port, callback) { instance.listen(port, callback); }

    public static function serveStatic(route) { return NativeExpress.serveStatic(route); }
}

@:jsRequire("express")
@:native("express")
extern class NativeExpress {
    function new(): Void;

    // HTTP Methods
    function post(route: String, handler: Function): Void;
    function get(route: String, handler: Function): Void;
    function put(route: String, handler: Function): Void;
    function patch(route: String, handler: Function): Void;
    function delete(route: String, handler: Function): Void;

    function use(route: String, handler: Function): Void;

    function listen(port: Int, callback: Void->Void): Void;

    @:native("static")
    static function serveStatic(root: String): Function;
}