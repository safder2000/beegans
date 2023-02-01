class LoginRequest {
  String? message;
  String? token;
  String? name;
  String? sId;
  int? userType;
  SectionId? sectionId;
  String? branchId;

  LoginRequest(
      {this.message,
      this.token,
      this.name,
      this.sId,
      this.userType,
      this.sectionId,
      this.branchId});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'];
    name = json['Name'];
    sId = json['_id'];
    userType = json['User_Type'];
    sectionId = json['sectionId'] != null
        ? new SectionId.fromJson(json['sectionId'])
        : null;
    branchId = json['branchId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['token'] = this.token;
    data['Name'] = this.name;
    data['_id'] = this.sId;
    data['User_Type'] = this.userType;
    if (this.sectionId != null) {
      data['sectionId'] = this.sectionId!.toJson();
    }
    data['branchId'] = this.branchId;
    return data;
  }
}

class SectionId {
  String? sId;
  String? sectionHead;

  SectionId({this.sId, this.sectionHead});

  SectionId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    sectionHead = json['Section_Head'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['Section_Head'] = this.sectionHead;
    return data;
  }
}
