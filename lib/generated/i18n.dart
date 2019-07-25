import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class S implements WidgetsLocalizations {
  const S();

  static const GeneratedLocalizationsDelegate delegate =
    GeneratedLocalizationsDelegate();

  static S of(BuildContext context) => Localizations.of<S>(context, S);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get about_us_desc => "我们公司专注于金融领域的智能推荐平台，为借款用户提供更专业、更优质的服务，我们将会为您挑选、匹配适合您的平台，让您的借款申请更容易，更快速。";
  String get about_us_title => "关于我们";
  String get btn_facebook_sms => "从Facebook获取验证码";
  String get cash_mall => "Cash Mall";
  String get change_password => "更改密码";
  String get confirm => "确认";
  String get desc_try_other_way => "试一试其他方式";
  String get forget_password => "忘记密码";
  String get get_sms_code => "获取验证码";
  String get hint_input_account => "请输入账户";
  String get hint_input_password => "设置密码";
  String get home => "Home";
  String get login => "登录";
  String get my => "My";
  String get my_item_1 => "我的App";
  String get my_item_2 => "关于我们";
  String get my_item_3 => "清除缓存";
  String get my_item_4 => "退出登陆";
  String get next => "下一步";
  String get register => "注册";
  String get try_way => "试一试";
}

class $en extends S {
  const $en();
}

class $zh_CN extends S {
  const $zh_CN();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get hint_input_password => "设置密码";
  @override
  String get next => "下一步";
  @override
  String get desc_try_other_way => "试一试其他方式";
  @override
  String get btn_facebook_sms => "从Facebook获取验证码";
  @override
  String get get_sms_code => "获取验证码";
  @override
  String get my => "My";
  @override
  String get login => "登录";
  @override
  String get hint_input_account => "请输入账户";
  @override
  String get home => "Home";
  @override
  String get confirm => "确认";
  @override
  String get change_password => "更改密码";
  @override
  String get about_us_desc => "我们公司专注于金融领域的智能推荐平台，为借款用户提供更专业、更优质的服务，我们将会为您挑选、匹配适合您的平台，让您的借款申请更容易，更快速。";
  @override
  String get forget_password => "忘记密码";
  @override
  String get my_item_1 => "我的App";
  @override
  String get about_us_title => "关于我们";
  @override
  String get my_item_2 => "关于我们";
  @override
  String get my_item_3 => "清除缓存";
  @override
  String get try_way => "试一试";
  @override
  String get my_item_4 => "退出登陆";
  @override
  String get cash_mall => "Cash Mall";
  @override
  String get register => "注册";
}

class $in_ID extends S {
  const $in_ID();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get hint_input_password => "设置密码";
  @override
  String get next => "下一步";
  @override
  String get desc_try_other_way => "试一试其他方式";
  @override
  String get btn_facebook_sms => "从Facebook获取验证码";
  @override
  String get get_sms_code => "获取验证码";
  @override
  String get my => "My";
  @override
  String get login => "登录";
  @override
  String get hint_input_account => "请输入账户";
  @override
  String get home => "Home";
  @override
  String get confirm => "确认";
  @override
  String get change_password => "更改密码";
  @override
  String get about_us_desc => "我们公司专注于金融领域的智能推荐平台，为借款用户提供更专业、更优质的服务，我们将会为您挑选、匹配适合您的平台，让您的借款申请更容易，更快速。";
  @override
  String get forget_password => "忘记密码";
  @override
  String get my_item_1 => "我的App";
  @override
  String get about_us_title => "关于我们";
  @override
  String get my_item_2 => "关于我们";
  @override
  String get my_item_3 => "清除缓存";
  @override
  String get try_way => "试一试";
  @override
  String get my_item_4 => "退出登陆";
  @override
  String get cash_mall => "Cash Mall";
  @override
  String get register => "注册";
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("en", ""),
      Locale("zh", "CN"),
      Locale("in", "ID"),
    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback, bool withCountry = true}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported, withCountry);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback, bool withCountry = true}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported, withCountry);
    };
  }

  @override
  Future<S> load(Locale locale) {
    final String lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "en":
          return SynchronousFuture<S>(const $en());
        case "zh_CN":
          return SynchronousFuture<S>(const $zh_CN());
        case "in_ID":
          return SynchronousFuture<S>(const $in_ID());
        default:
          // NO-OP.
      }
    }
    return SynchronousFuture<S>(const S());
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale, true);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported, bool withCountry) {
    if (locale == null || !_isSupported(locale, withCountry)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale, bool withCountry) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        // Language must always match both locales.
        if (supportedLocale.languageCode != locale.languageCode) {
          continue;
        }

        // If country code matches, return this locale.
        if (supportedLocale.countryCode == locale.countryCode) {
          return true;
        }

        // If no country requirement is requested, check if this locale has no country.
        if (true != withCountry && (supportedLocale.countryCode == null || supportedLocale.countryCode.isEmpty)) {
          return true;
        }
      }
    }
    return false;
  }
}

String getLang(Locale l) => l == null
  ? null
  : l.countryCode != null && l.countryCode.isEmpty
    ? l.languageCode
    : l.toString();
