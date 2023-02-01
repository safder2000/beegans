class SalesReq {
  List<AreaList>? _areaList;

  SalesReq({List<AreaList>? areaList}) {
    if (areaList != null) {
      this._areaList = areaList;
    }
  }

  List<AreaList>? get areaList => _areaList;
  set areaList(List<AreaList>? areaList) => _areaList = areaList;

  SalesReq.fromJson(Map<String, dynamic> json) {
    if (json['AreaList'] != null) {
      _areaList = <AreaList>[];
      json['AreaList'].forEach((v) {
        _areaList!.add(new AreaList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._areaList != null) {
      data['AreaList'] = this._areaList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AreaList {
  String? _sId;
  int? _reportTimeType;
  String? _weakDay;
  List<BranchId>? _branchId;
  List<SectionId>? _sectionId;
  List<AreaId>? _areaId;
  String? _fromTime;
  String? _toTime;
  int? _imageLimit;
  int? _imageCount;

  AreaList(
      {String? sId,
      int? reportTimeType,
      String? weakDay,
      List<BranchId>? branchId,
      List<SectionId>? sectionId,
      List<AreaId>? areaId,
      String? fromTime,
      String? toTime,
      int? imageLimit,
      int? imageCount}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (reportTimeType != null) {
      this._reportTimeType = reportTimeType;
    }
    if (weakDay != null) {
      this._weakDay = weakDay;
    }
    if (branchId != null) {
      this._branchId = branchId;
    }
    if (sectionId != null) {
      this._sectionId = sectionId;
    }
    if (areaId != null) {
      this._areaId = areaId;
    }
    if (fromTime != null) {
      this._fromTime = fromTime;
    }
    if (toTime != null) {
      this._toTime = toTime;
    }
    if (imageLimit != null) {
      this._imageLimit = imageLimit;
    }
    if (imageCount != null) {
      this._imageCount = imageCount;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  int? get reportTimeType => _reportTimeType;
  set reportTimeType(int? reportTimeType) => _reportTimeType = reportTimeType;
  String? get weakDay => _weakDay;
  set weakDay(String? weakDay) => _weakDay = weakDay;
  List<BranchId>? get branchId => _branchId;
  set branchId(List<BranchId>? branchId) => _branchId = branchId;
  List<SectionId>? get sectionId => _sectionId;
  set sectionId(List<SectionId>? sectionId) => _sectionId = sectionId;
  List<AreaId>? get areaId => _areaId;
  set areaId(List<AreaId>? areaId) => _areaId = areaId;
  String? get fromTime => _fromTime;
  set fromTime(String? fromTime) => _fromTime = fromTime;
  String? get toTime => _toTime;
  set toTime(String? toTime) => _toTime = toTime;
  int? get imageLimit => _imageLimit;
  set imageLimit(int? imageLimit) => _imageLimit = imageLimit;
  int? get imageCount => _imageCount;
  set imageCount(int? imageCount) => _imageCount = imageCount;

  AreaList.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _reportTimeType = json['Report_Time_Type'];
    _weakDay = json['WeakDay'];
    if (json['Branch_Id'] != null) {
      _branchId = <BranchId>[];
      json['Branch_Id'].forEach((v) {
        _branchId!.add(new BranchId.fromJson(v));
      });
    }
    if (json['Section_Id'] != null) {
      _sectionId = <SectionId>[];
      json['Section_Id'].forEach((v) {
        _sectionId!.add(new SectionId.fromJson(v));
      });
    }
    if (json['Area_Id'] != null) {
      _areaId = <AreaId>[];
      json['Area_Id'].forEach((v) {
        _areaId!.add(new AreaId.fromJson(v));
      });
    }
    _fromTime = json['From_Time'];
    _toTime = json['To_Time'];
    _imageLimit = json['imageLimit'];
    _imageCount = json['imageCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['Report_Time_Type'] = this._reportTimeType;
    data['WeakDay'] = this._weakDay;
    if (this._branchId != null) {
      data['Branch_Id'] = this._branchId!.map((v) => v.toJson()).toList();
    }
    if (this._sectionId != null) {
      data['Section_Id'] = this._sectionId!.map((v) => v.toJson()).toList();
    }
    if (this._areaId != null) {
      data['Area_Id'] = this._areaId!.map((v) => v.toJson()).toList();
    }
    data['From_Time'] = this._fromTime;
    data['To_Time'] = this._toTime;
    data['imageLimit'] = this._imageLimit;
    data['imageCount'] = this._imageCount;
    return data;
  }
}

class BranchId {
  String? _sId;
  String? _name;

  BranchId({String? sId, String? name}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (name != null) {
      this._name = name;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get name => _name;
  set name(String? name) => _name = name;

  BranchId.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['name'] = this._name;
    return data;
  }
}

class SectionId {
  String? _sId;
  String? _sectionHead;

  SectionId({String? sId, String? sectionHead}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (sectionHead != null) {
      this._sectionHead = sectionHead;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get sectionHead => _sectionHead;
  set sectionHead(String? sectionHead) => _sectionHead = sectionHead;

  SectionId.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _sectionHead = json['Section_Head'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['Section_Head'] = this._sectionHead;
    return data;
  }
}

class AreaId {
  String? _sId;
  String? _areaName;
  int? _sortOrder;

  AreaId({String? sId, String? areaName, int? sortOrder}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (areaName != null) {
      this._areaName = areaName;
    }
    if (sortOrder != null) {
      this._sortOrder = sortOrder;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get areaName => _areaName;
  set areaName(String? areaName) => _areaName = areaName;
  int? get sortOrder => _sortOrder;
  set sortOrder(int? sortOrder) => _sortOrder = sortOrder;

  AreaId.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _areaName = json['Area_Name'];
    _sortOrder = json['sortOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['Area_Name'] = this._areaName;
    data['sortOrder'] = this._sortOrder;
    return data;
  }
}
class SalesRequest {
  List<AreaList>? _areaList;

  SalesReq({List<AreaList>? areaList}) {
    if (areaList != null) {
      this._areaList = areaList;
    }
  }

  List<AreaList>? get areaList => _areaList;
  set areaList(List<AreaList>? areaList) => _areaList = areaList;

  SalesRequest.fromJson(Map<String, dynamic> json) {
    if (json['AreaList'] != null) {
      _areaList = <AreaList>[];
      json['AreaList'].forEach((v) {
        _areaList!.add(new AreaList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._areaList != null) {
      data['AreaList'] = this._areaList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Area_List {
  String? _sId;
  int? _reportTimeType;
  String? _weakDay;
  List<BranchId>? _branchId;
  List<SectionId>? _sectionId;
  List<AreaId>? _areaId;
  String? _fromTime;
  String? _toTime;
  int? _imageLimit;
  int? _imageCount;

  Area_List(
      {String? sId,
      int? reportTimeType,
      String? weakDay,
      List<BranchId>? branchId,
      List<SectionId>? sectionId,
      List<AreaId>? areaId,
      String? fromTime,
      String? toTime,
      int? imageLimit,
      int? imageCount}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (reportTimeType != null) {
      this._reportTimeType = reportTimeType;
    }
    if (weakDay != null) {
      this._weakDay = weakDay;
    }
    if (branchId != null) {
      this._branchId = branchId;
    }
    if (sectionId != null) {
      this._sectionId = sectionId;
    }
    if (areaId != null) {
      this._areaId = areaId;
    }
    if (fromTime != null) {
      this._fromTime = fromTime;
    }
    if (toTime != null) {
      this._toTime = toTime;
    }
    if (imageLimit != null) {
      this._imageLimit = imageLimit;
    }
    if (imageCount != null) {
      this._imageCount = imageCount;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  int? get reportTimeType => _reportTimeType;
  set reportTimeType(int? reportTimeType) => _reportTimeType = reportTimeType;
  String? get weakDay => _weakDay;
  set weakDay(String? weakDay) => _weakDay = weakDay;
  List<BranchId>? get branchId => _branchId;
  set branchId(List<BranchId>? branchId) => _branchId = branchId;
  List<SectionId>? get sectionId => _sectionId;
  set sectionId(List<SectionId>? sectionId) => _sectionId = sectionId;
  List<AreaId>? get areaId => _areaId;
  set areaId(List<AreaId>? areaId) => _areaId = areaId;
  String? get fromTime => _fromTime;
  set fromTime(String? fromTime) => _fromTime = fromTime;
  String? get toTime => _toTime;
  set toTime(String? toTime) => _toTime = toTime;
  int? get imageLimit => _imageLimit;
  set imageLimit(int? imageLimit) => _imageLimit = imageLimit;
  int? get imageCount => _imageCount;
  set imageCount(int? imageCount) => _imageCount = imageCount;

  Area_List.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _reportTimeType = json['Report_Time_Type'];
    _weakDay = json['WeakDay'];
    if (json['Branch_Id'] != null) {
      _branchId = <BranchId>[];
      json['Branch_Id'].forEach((v) {
        _branchId!.add(new BranchId.fromJson(v));
      });
    }
    if (json['Section_Id'] != null) {
      _sectionId = <SectionId>[];
      json['Section_Id'].forEach((v) {
        _sectionId!.add(new SectionId.fromJson(v));
      });
    }
    if (json['Area_Id'] != null) {
      _areaId = <AreaId>[];
      json['Area_Id'].forEach((v) {
        _areaId!.add(new AreaId.fromJson(v));
      });
    }
    _fromTime = json['From_Time'];
    _toTime = json['To_Time'];
    _imageLimit = json['imageLimit'];
    _imageCount = json['imageCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['Report_Time_Type'] = this._reportTimeType;
    data['WeakDay'] = this._weakDay;
    if (this._branchId != null) {
      data['Branch_Id'] = this._branchId!.map((v) => v.toJson()).toList();
    }
    if (this._sectionId != null) {
      data['Section_Id'] = this._sectionId!.map((v) => v.toJson()).toList();
    }
    if (this._areaId != null) {
      data['Area_Id'] = this._areaId!.map((v) => v.toJson()).toList();
    }
    data['From_Time'] = this._fromTime;
    data['To_Time'] = this._toTime;
    data['imageLimit'] = this._imageLimit;
    data['imageCount'] = this._imageCount;
    return data;
  }
}

class Branch_Id {
  String? _sId;
  String? _name;

  BranchId({String? sId, String? name}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (name != null) {
      this._name = name;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get name => _name;
  set name(String? name) => _name = name;

  Branch_Id.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['name'] = this._name;
    return data;
  }
}

class Section_Id {
  String? _sId;
  String? _sectionHead;

  SectionId({String? sId, String? sectionHead}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (sectionHead != null) {
      this._sectionHead = sectionHead;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get sectionHead => _sectionHead;
  set sectionHead(String? sectionHead) => _sectionHead = sectionHead;

  Section_Id.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _sectionHead = json['Section_Head'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['Section_Head'] = this._sectionHead;
    return data;
  }
}

class Area_Id {
  String? _sId;
  String? _areaName;
  int? _sortOrder;

  AreaId({String? sId, String? areaName, int? sortOrder}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (areaName != null) {
      this._areaName = areaName;
    }
    if (sortOrder != null) {
      this._sortOrder = sortOrder;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get areaName => _areaName;
  set areaName(String? areaName) => _areaName = areaName;
  int? get sortOrder => _sortOrder;
  set sortOrder(int? sortOrder) => _sortOrder = sortOrder;

  Area_Id.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _areaName = json['Area_Name'];
    _sortOrder = json['sortOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['Area_Name'] = this._areaName;
    data['sortOrder'] = this._sortOrder;
    return data;
  }
}

