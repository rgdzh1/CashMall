package com.oklik.cashmall;

import android.os.Bundle;

import com.airbnb.deeplinkdispatch.DeepLinkHandler;
import com.oklik.cashmall.deeplink.AppDeepLinkModule;
import com.oklik.cashmall.deeplink.AppDeepLinkModuleLoader;
import com.oklik.cashmall.deeplink.LibraryDeepLinkModule;
import com.oklik.cashmall.deeplink.LibraryDeepLinkModuleLoader;


import io.flutter.app.FlutterActivity;

@DeepLinkHandler({AppDeepLinkModule.class, LibraryDeepLinkModule.class})
public class DeepLinkActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DeepLinkDelegate deepLinkDelegate = new DeepLinkDelegate(new AppDeepLinkModuleLoader(), new LibraryDeepLinkModuleLoader());
        deepLinkDelegate.dispatchFrom(this);
        finish();
    }
}
