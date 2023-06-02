class UserModel{
  String? name;
  String? email;
  String? uid;
  String? phone;
  String? country;
  String? city;

  UserModel({this.name, this.email, this.uid, this.phone, this.country, this.city});

  factory UserModel.fromMap(map)
  {
    return UserModel(
      name: map['Name'],
      email: map['Email'],
      uid: map['Uid'],
      phone: map['Phone'],
      country: map['Country'],
      city: map['City']
    );
  }

  Map<String, dynamic> tomap ()
  {
      return{
        'Name' : name,
        'Email' : email,
        'Uid' : uid,
        'Phone' : phone,
        'City' : city,
        'Country' : country
      };

  }
}