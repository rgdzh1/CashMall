package com.oklik.cashmall;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

import com.airbnb.deeplinkdispatch.DeepLink;
import com.oklik.cashmall.base.BaseActivity;
import com.oklik.cashmall.constant.NativePath;

import butterknife.BindView;
import butterknife.ButterKnife;

@DeepLink(NativePath.SecondPath)
public class SecondActivity extends BaseActivity {


    @BindView(R.id.btn_flutter_page)
    Button btnFlutterPage;

    @Override
    public int getContentId() {
        return R.layout.activity_second;
    }

    @Override
    public void initData() {

    }

    @Override
    public void initListener() {
        btnFlutterPage.setOnClickListener(v -> {
            Intent intent = new Intent(this, SecondFlutterActivity.class);
            startActivity(intent);
        });
    }

}
