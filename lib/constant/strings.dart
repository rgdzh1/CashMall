import 'package:CashMall/cashmall.dart';

class Strings {
  static String languageCode;

  static initStrings(Locale locale) {
    SharedPreferences.getInstance().then((instance) {
      languageCode = locale.languageCode;
      instance.setString(SpKey.keyLanguage, languageCode);
    }).catchError((err) {
      print("Strings 类没有初始化");
    });
  }

  static String getString(String ids) {
    if (languageCode == null) {
      SharedPreferences.getInstance().then((instance) {
        languageCode = instance.getString(SpKey.keyLanguage);
        return localizedSimpleValues[languageCode][ids];
      });
    } else {
      return localizedSimpleValues[languageCode][ids];
    }
  }
}

class Ids {
  static final String home = "home";
  static final String my = "my";
  static final String my_item_1 = "my_item_1";
  static final String my_item_2 = "my_item_2";
  static final String my_item_3 = "my_item_3";
  static final String my_item_4 = "my_item_4";
  static final String about_us_title = "about_us_title";
  static final String about_us_desc = "about_us_desc";
  static final String login_register_title = "login_register_title";
  static final String login = "login";
}

///简单多语言资源.
Map<String, Map<String, String>> localizedSimpleValues = {
  'en': {
    Ids.home: 'Home',
    Ids.my: 'My',
    Ids.my_item_1: 'Aplikasi',
    Ids.my_item_2: 'Tentang kami',
    Ids.my_item_3: 'Kosongkan cache',
    Ids.my_item_4: 'Keluar',
    Ids.about_us_title: 'TENTANG KAMI',
    Ids.about_us_desc:
        'Perusahaan kami berspesialisasi dalam platform rekomendasi cerdas di bidang keuangan, memberikan layanan yang lebih profesional dan lebih baik bagi peminjam. Kami akan memilih dan mencocokkan platform yang sesuai dengan Anda, membuat aplikasi pinjaman Anda lebih mudah dan lebih cepat.',
    Ids.login_register_title: 'Cash Mall',
    Ids.login: 'Login',
  },
  'zh': {
    Ids.home: '主页',
    Ids.my: '我的',
    Ids.my_item_1: '我的App',
    Ids.my_item_2: '关于我们',
    Ids.my_item_3: '清除缓存',
    Ids.my_item_4: '退出登陆',
    Ids.about_us_title: '关于我们',
    Ids.about_us_desc:
        '我们公司专注于金融领域的智能推荐平台，为借款用户提供更专业、更优质的服务，我们将会为您挑选、匹配适合您的平台，让您的借款申请更容易，更快速。',
    Ids.login_register_title: 'Cash Mall',
    Ids.login: '登录',
  },
};

///多语言资源.
Map<String, Map<String, Map<String, String>>> localizedValues = {
  'en': {'US': {}},
  'zh': {
    'CN': {},
    'HK': {},
  }
};