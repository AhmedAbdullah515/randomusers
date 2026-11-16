class UserModel 
{
  final String name;
  final String email;
  final String phone;
  final String Adress;
  final String imagelink;
  final num age;

  UserModel({required this.name, required this.email, required this.phone, required this.Adress, required this.imagelink, required this.age});

}
class Users{
  List<UserModel> users;
  Users({required this.users});
  factory Users.fromjson(Map<String,dynamic>json){
    final templist=json["results"].map<UserModel>(
      (user)=>UserModel(
        name: user["name"]["first"]+" "+user["name"]["last"],
        email: user["email"],
        phone: user["phone"],
        Adress: user["location"]["street"]["number"].toString()+" "+user["location"]["street"]["name"]+" "+user["location"]["city"]+" "+user["location"]["state"]+" "+user["location"]["country"]+" "+user["location"]["postcode"].toString(),
        imagelink: user["picture"]["large"],
        age: user["dob"]["age"]
      )
    ).toList();
    return Users(users: templist);
  }

}