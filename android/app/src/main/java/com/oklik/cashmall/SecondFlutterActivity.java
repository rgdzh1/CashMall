package com.oklik.cashmall;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.oklik.cashmall.constant.NativeKey;
import com.taobao.idlefish.flutterboost.containers.BoostFlutterActivity;

import java.util.Map;

import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class SecondFlutterActivity extends BoostFlutterActivity {


    @Override
    public String getContainerName() {
        return NativeKey.SecondKey;
    }

    @Override
    public Map getContainerParams() {
        return null;
    }

    @Override
    public void onRegisterPlugins(PluginRegistry registry) {
        GeneratedPluginRegistrant.registerWith(registry);
    }
}
