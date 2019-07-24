class HomeDartEntity {
	double star;
	String name;
	bool married;
	int age;

	HomeDartEntity({this.star, this.name, this.married, this.age});

	HomeDartEntity.fromJson(Map<String, dynamic> json) {
		star = json['star'];
		name = json['name'];
		married = json['married'];
		age = json['age'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['star'] = this.star;
		data['name'] = this.name;
		data['married'] = this.married;
		data['age'] = this.age;
		return data;
	}
}
