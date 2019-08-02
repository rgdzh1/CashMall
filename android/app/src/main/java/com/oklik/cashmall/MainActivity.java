package com.oklik.cashmall;

import android.os.Bundle;

import com.oklik.cashmall.constant.NativeKey;
import com.taobao.idlefish.flutterboost.containers.BoostFlutterActivity;

import java.lang.ref.WeakReference;
import java.util.Map;

import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends BoostFlutterActivity {

    public static WeakReference<MainActivity> mainActivityWeakReference;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mainActivityWeakReference = new WeakReference<MainActivity>(this);
    }

    @Override
    public String getContainerName() {
        return NativeKey.MainKey;
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
