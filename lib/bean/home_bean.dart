/// firstName : "Brett"
/// lastName : "McLaughlin"

class HomeBean {
  String firstName;
  String lastName;

  static HomeBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    HomeBean homeBeanBean = HomeBean();
    homeBeanBean.firstName = map['firstName'];
    homeBeanBean.lastName = map['lastName'];
    return homeBeanBean;
  }

  Map toJson() => {
    "firstName": firstName,
    "lastName": lastName,
  };
}