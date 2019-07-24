# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\Software\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

####retrofit 混淆文件####
# Retain generic type information for use by reflection by converters and adapters.
-keepattributes Signature
# Retain service method parameters.
-keepclassmembernames,allowobfuscation interface * {
    @retrofit2.http.* <methods>;
}
# Ignore annotation used for build tooling.
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
#####RXBinding 混淆文件#########
# AutoValue annotations are retained but dependency is compileOnly.
-dontwarn com.google.auto.value.AutoValue

#EventBus混淆配置文件
-keepattributes *Annotation*
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}

#AndroidUtilCode混淆配置
-keep class com.blankj.utilcode.** { *; }
-keepclassmembers class com.blankj.utilcode.** { *; }
-dontwarn com.blankj.utilcode.**

#butterknife混淆配置文件
-keep public class * implements butterknife.Unbinder { public <init>(**, android.view.View); }
-keep class butterknife.*
-keepclasseswithmembernames class * { @butterknife.* <methods>; }
-keepclasseswithmembernames class * { @butterknife.* <fields>; }
#Android-AdvancedWebView混淆文件配置
-keep class * extends android.webkit.WebChromeClient { *; }
-dontwarn im.delight.android.webview.**
#活体混淆配置文件
-keep public class com.megvii.**{*;}

#GSON混淆
-keepattributes Signature
-keepattributes *Annotation*
-keep class sun.misc.Unsafe { *; }
-keep class oklik.flb.jkcash.com.bean.** { *; }
-keep class android.content.pm.** { *; }

#Okhttp混淆
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

#RXBing
-dontwarn com.google.auto.value.AutoValue

##Udesk即时通讯的混淆文件
-keep class udesk.** {*;}
-keep class cn.udesk.**{*; }
-keep class okhttp3.** {*;}
-keep class okio.** {*;}
-keep class com.qiniu.**{*;}
-keep class com.qiniu.**{public <init>();}
-ignorewarnings
-keep class org.jxmpp.** {*;}
-keep class de.measite.** {*;}
-keep class org.jivesoftware.** {*;}
-keep class org.xmlpull.** {*;}
-dontwarn org.xbill.**
-keep class org.xbill.** {*;}
-keepattributes *Annotation*
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}
-keep class com.facebook.** {*; }
-keep class com.facebook.imagepipeline.** {*; }
-keep class com.facebook.animated.gif.** {*; }
-keep class com.facebook.drawee.** {*; }
-keep class com.facebook.drawee.backends.pipeline.** {*; }
-keep class com.facebook.imagepipeline.** {*; }
-keep class bolts.** {*; }
-keep class me.relex.photodraweeview.** {*; }
-keep,allowobfuscation @interface com.facebook.common.internal.DoNotStrip
-keep @com.facebook.common.internal.DoNotStrip class *
-keepclassmembers class * {
    @com.facebook.common.internal.DoNotStrip *;
}
-keepclassmembers class * {
    native <methods>;
}
-dontwarn okio.**
-dontwarn com.squareup.okhttp.**
-dontwarn okhttp3.**
-dontwarn javax.annotation.**
-dontwarn com.android.volley.toolbox.**
-dontwarn com.facebook.infer.**
-keep class com.tencent.bugly.** {*; }
-keep class io.agora.**{*;}

#魔盒的混淆配置文件
-dontoptimize
-dontusemixedcaseclassnames
-verbose
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-dontwarn dalvik.**
-dontwarn com.tencent.smtt.**
#-overloadaggressively
#Addidional for x5.sdk classes for apps
-keep class com.tencent.smtt.export.external.**{ *; }
-keep class com.tencent.tbs.video.interfaces.IUserStateChangedListener { *; }
-keep class com.tencent.smtt.sdk.CacheManager { public *; }
-keep class com.tencent.smtt.sdk.CookieManager { public *; }
-keep class com.tencent.smtt.sdk.WebHistoryItem { public *; }
-keep class com.tencent.smtt.sdk.WebViewDatabase { public *; }
-keep class com.tencent.smtt.sdk.WebBackForwardList { public *; }
-keep public class com.tencent.smtt.sdk.WebView { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.WebView$HitTestResult { public static final <fields>; public java.lang.String getExtra(); public int getType(); }
-keep public class com.tencent.smtt.sdk.WebView$WebViewTransport { public <methods>; }
-keep public class com.tencent.smtt.sdk.WebView$PictureListener { public <fields>; public <methods>; }
-keepattributes InnerClasses -keep public enum com.tencent.smtt.sdk.WebSettings$** { *; }
-keep public enum com.tencent.smtt.sdk.QbSdk$** { *; }
-keep public class com.tencent.smtt.sdk.WebSettings { public *; }
-keepattributes Signature
-keep public class com.tencent.smtt.sdk.ValueCallback { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.WebViewClient { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.DownloadListener { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.WebChromeClient { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.WebChromeClient$FileChooserParams { public <fields>; public <methods>; }
-keep class com.tencent.smtt.sdk.SystemWebChromeClient{ public *; }
#1、extension interfaces should be apparent
-keep public class com.tencent.smtt.export.external.extension.interfaces.* { public protected *; }
#2、interfaces should be apparent
-keep public class com.tencent.smtt.export.external.interfaces.* { public protected *; }
-keep public class com.tencent.smtt.sdk.WebViewCallbackClient { public protected *; }
-keep public class com.tencent.smtt.sdk.WebStorage$QuotaUpdater { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.WebIconDatabase { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.WebStorage { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.DownloadListener { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.QbSdk { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.QbSdk$PreInitCallback { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.CookieSyncManager { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.Tbs* { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.utils.LogFileUtils { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.utils.TbsLog { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.utils.TbsLogClient { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.CookieSyncManager { public <fields>; public <methods>; }
#Added for game demos
-keep public class com.tencent.smtt.sdk.TBSGamePlayer { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.TBSGamePlayerClient* { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.TBSGamePlayerClientExtension { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.sdk.TBSGamePlayerService* { public <fields>; public <methods>; }
-keep public class com.tencent.smtt.utils.Apn { public <fields>; public <methods>; }
-keep class com.tencent.smtt.** { *; }
#end
-keep public class com.tencent.smtt.export.external.extension.proxy.ProxyWebViewClientExtension { public <fields>; public <methods>; }
-keep class MTT.ThirdAppInfoNew { *; }
-keep class com.tencent.mtt.MttTraceEvent { *; }
#Game related
-keep public class com.tencent.smtt.gamesdk.* { public protected *; }
-keep public class com.tencent.smtt.sdk.TBSGameBooter {    public <fields>;    public <methods>; }
-keep public class com.tencent.smtt.sdk.TBSGameBaseActivity { public protected *; }
-keep public class com.tencent.smtt.sdk.TBSGameBaseActivityProxy { public protected *; }
-keep public class com.tencent.smtt.gamesdk.internal.TBSGameServiceClient { public *; }
#下⽅方是android平台⾃自带的排除项，这⾥里里不不要动
-keep public class * extends android.app.Activity{ public <fields>; public <methods>; }
-keep public class * extends android.app.Application{ public <fields>; public <methods>; }
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keepclassmembers enum * { public static **[] values(); public static ** valueOf(java.lang.String); }
-keepclasseswithmembers class * { public <init>(android.content.Context, android.util.AttributeSet); }
-keepclasseswithmembers class * { public <init>(android.content.Context, android.util.AttributeSet, int); }
-keepattributes *Annotation* -keepclasseswithmembernames class *{ native <methods>;}
-keep class * implements android.os.Parcelable { public static final android.os.Parcelable$Creator *; }
#下⽅方是共性的排除项⽬目 #⽅方法名中含有“JNI”字符的，认定是Java Native Interface⽅方法，⾃自动排除 #⽅方法名中含有“JRI”字符的，认定是Java Reflection Interface⽅方法，⾃自动排除
-keepclasseswithmembers class * { ... *JNI*(...); }
-keepclasseswithmembernames class * { ... *JRI*(...); }
-keep class **JNI* {*;}
-keep class com.alibaba.fastjson.** { *; }
-dontwarn com.alibaba.fastjson.** -keep class cn.fraudmetrix.octopus.aspirit.bean.** { *; }
#RxCache
-dontwarn io.rx_cache2.internal.**
-keepclassmembers enum io.rx_cache2.Source { *; }
-keepclassmembernames class * { @io.rx_cache2.* <methods>; }

#DeepLinkDispatch 深度链接分发
-keep @interface com.airbnb.deeplinkdispatch.DeepLink
-keepclasseswithmembers class * {
    @com.airbnb.deeplinkdispatch.DeepLink <methods>;
}

