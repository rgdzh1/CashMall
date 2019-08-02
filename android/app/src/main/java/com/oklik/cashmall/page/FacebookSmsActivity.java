package com.oklik.cashmall.page;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;

import com.airbnb.deeplinkdispatch.DeepLink;
import com.blankj.utilcode.util.ActivityUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.facebook.accountkit.AccessToken;
import com.facebook.accountkit.AccountKitLoginResult;
import com.facebook.accountkit.ui.AccountKitActivity;
import com.facebook.accountkit.ui.AccountKitConfiguration;
import com.facebook.accountkit.ui.LoginType;
import com.oklik.cashmall.MainActivity;
import com.oklik.cashmall.R;
import com.oklik.cashmall.base.BaseActivity;
import com.oklik.cashmall.constant.NativePath;

@DeepLink(NativePath.FACEBOOK_PATH)
public class FacebookSmsActivity extends BaseActivity {

    private static final int APP_REQUEST_CODE = 1250;
    private TextView tvSms;

    @Override
    public int getContentId() {
        return R.layout.activity_facebook_sms;
    }

    @Override
    public void initData() {
        tvSms = (TextView) findViewById(R.id.tv_sms);
//        Intent intent = new Intent(this, AccountKitActivity.class);
//        AccountKitConfiguration.AccountKitConfigurationBuilder configurationBuilder = new AccountKitConfiguration.AccountKitConfigurationBuilder(LoginType.PHONE, AccountKitActivity.ResponseType.TOKEN);
////        configurationBuilder.setDefaultCountryCode("ID");
////        String[] whiteList = new String[]{"ID"};
////        configurationBuilder.setDefaultCountryCode("CN");
////        String[] whiteList = new String[]{"CN"};
////        configurationBuilder.setSMSWhitelist(whiteList);
//        configurationBuilder.setFacebookNotificationsEnabled(true);
//        configurationBuilder.setTitleType(AccountKitActivity.TitleType.LOGIN);
//        configurationBuilder.setReadPhoneStateEnabled(true);
//        intent.putExtra(AccountKitActivity.ACCOUNT_KIT_ACTIVITY_CONFIGURATION, configurationBuilder.build());
//        startActivityForResult(intent, APP_REQUEST_CODE);

    }

    @Override
    public void initListener() {
        tvSms.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final Intent intent = new Intent(FacebookSmsActivity.this, AccountKitActivity.class);
                AccountKitConfiguration.AccountKitConfigurationBuilder configurationBuilder = new AccountKitConfiguration.AccountKitConfigurationBuilder(LoginType.PHONE, AccountKitActivity.ResponseType.CODE);
                intent.putExtra(AccountKitActivity.ACCOUNT_KIT_ACTIVITY_CONFIGURATION, configurationBuilder.build());
                startActivityForResult(intent, APP_REQUEST_CODE);
            }
        });
    }


    @Override
    protected void onActivityResult(final int requestCode, final int resultCode, final Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == APP_REQUEST_CODE) {
            AccountKitLoginResult loginResult = data.getParcelableExtra(AccountKitLoginResult.RESULT_KEY);
            if (loginResult.getError() != null) {
                ToastUtils.showLong(loginResult.getError().getErrorType().getMessage());
            } else{
                AccessToken accessToken = loginResult.getAccessToken();
                if (accessToken == null) {
                    ToastUtils.showLong("成功了吗");
                    ActivityUtils.startActivity(MainActivity.class);
                }
            }
        }
    }
}
