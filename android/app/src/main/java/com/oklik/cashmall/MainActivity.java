package com.oklik.cashmall;

import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import com.oklik.cashmall.constant.NativeKey;
import com.taobao.idlefish.flutterboost.FlutterBoostPlugin;
import com.taobao.idlefish.flutterboost.FlutterViewContainerManager;
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
//    long mExitTime;

//    @Override
//    public void onBackPressed() {
//        FlutterViewContainerManager iContainerManager = (FlutterViewContainerManager) FlutterBoostPlugin.containerManager();
//        int size = iContainerManager.mRefs.size();
//        Log.e("看看栈",size+"");
//        if (size < 1) {
//            FlutterBoostPlugin.containerManager().onBackPressed(this);
//            if ((System.currentTimeMillis() - mExitTime) > 2000) {
//                Toast.makeText(this, "Press again to exit", Toast.LENGTH_LONG).show();
//                mExitTime = System.currentTimeMillis();
//            } else {
//                finish();
//            }
//        } else {
//            super.onBackPressed();
//        }
//
//    }
}
