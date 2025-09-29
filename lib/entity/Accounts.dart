class Accounts {
  List<Account> accounts = <Account>[];

  Accounts(this.accounts);

  Accounts.fromJson(Map<String, dynamic> json) {
    if (json['accounts'] != null) {
      json['accounts'].forEach((v) {
        accounts.add(Account.fromJson(v));
      });
    }
  }
}

class Account {
  late int iD;
  late String createdAt;
  late String updatedAt;
  late Null deletedAt;
  late String name;
  late String password;
  late int userID;
  late String root;

  Account(
      this.iD,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.name,
        this.password,
        this.userID,
        this.root);

  Account.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    name = json['Name'];
    password = json['Password'];
    userID = json['UserID'];
    root = json['Root'];
  }
}
