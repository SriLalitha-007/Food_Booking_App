class MyUserEntity{
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });


//we cannot send direct objects to the firestore or any db. We need to formulized type of data.
  Map<String, Object?> toDocument(){
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc){
    return MyUserEntity(
      userId: doc['userId'],
      email: doc['email'],
      name: doc['name'],
      hasActiveCart: doc['hasActiveCart'],
    );
  }

}