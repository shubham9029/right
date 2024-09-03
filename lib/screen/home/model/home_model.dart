class HomeModel
{
  String? email,password;

  HomeModel({this.email, this.password});

  factory HomeModel.mapToModel(Map m1)
  {
    return HomeModel(
      email: m1['email'],
      password: m1['password']
    );
  }
}