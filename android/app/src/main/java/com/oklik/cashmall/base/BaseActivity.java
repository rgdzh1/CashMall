package com.oklik.cashmall.base;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;


import com.airbnb.deeplinkdispatch.DeepLink;
import com.oklik.cashmall.constant.LinkParames;

import butterknife.ButterKnife;


public abstract class BaseActivity extends AppCompatActivity implements BaseView {

    private String linkParameter;// 这个参数是从Flutter传递过来的

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getContentId());
        ButterKnife.bind(this);
        Intent intent = getIntent();
        if (intent.getBooleanExtra(DeepLink.IS_DEEP_LINK, false)) {
            Bundle parameters = intent.getExtras();
            if (parameters != null && parameters.getString(LinkParames.linkParames) != null) {
                linkParameter = parameters.getString(LinkParames.linkParames);
            }
        }
        initData();
        initListener();
    }
}
