package com.devk.handle_event_change;

import java.util.HashMap;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

public class HandleEventChangePlugin extends FlutterRegistrarResponder implements MethodCallHandler {

    public static void registerWith(Registrar registrar) {
        HandleEventChangePlugin plugin = new HandleEventChangePlugin();
        plugin.channel = new MethodChannel(registrar.messenger(), "DEVK");
        plugin.channel.setMethodCallHandler(plugin);
        plugin.flutterRegistrar = registrar;
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        if (call.method.contentEquals("DEVK#initEventChangeParams"))
            this.initEventChangeParams();
        else
            replyNotImplemented(result);
    }

    private void initEventChangeParams() {
        HashMap<String, Object> hash = new HashMap<>();
        hash.put("data", "DEVK DEMO");
        invokeMethodOnUiThread("DEVK#handleCallBackParams", hash);
    }
}