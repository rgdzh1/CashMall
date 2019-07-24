package com.oklik.cashmall;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.airbnb.deeplinkdispatch.DeepLink;
import com.oklik.cashmall.constant.NativeKey;
import com.oklik.cashmall.constant.NativePath;
import com.taobao.idlefish.flutterboost.containers.BoostFlutterActivity;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

import io.flutter.app.FlutterActivity;
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
