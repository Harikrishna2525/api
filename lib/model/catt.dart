class catfact {
  String? fact;
  int? length;

  catfact({this.fact, this.length});

  catfact.fromJson(Map<String, dynamic> json) {
    fact = json['fact'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fact'] = this.fact;
    data['length'] = this.length;
    return data;
  }
}
//
class bore {
  String? activity;
  String? type;
  int? participants;
  int? price;
  String? link;
  String? key;
  int? accessibility;

  bore(
      {this.activity,
        this.type,
        this.participants,
        this.price,
        this.link,
        this.key,
        this.accessibility});

  bore.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    type = json['type'];
    participants = json['participants'];
    price = json['price'];
    link = json['link'];
    key = json['key'];
    accessibility = json['accessibility'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activity'] = this.activity;
    data['type'] = this.type;
    data['participants'] = this.participants;
    data['price'] = this.price;
    data['link'] = this.link;
    data['key'] = this.key;
    data['accessibility'] = this.accessibility;
    return data;
  }
}
//
class gify {
  int? count;
  String? name;
  int? age;

  gify({this.count, this.name, this.age});

  gify.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    name = json['name'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['name'] = this.name;
    data['age'] = this.age;
    return data;
  }
}
//
class entryy {
  int? count;
  List<Entries>? entries;

  entryy({this.count, this.entries});

  entryy.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['entries'] != null) {
      entries = <Entries>[];
      json['entries'].forEach((v) {
        entries!.add(new Entries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.entries != null) {
      data['entries'] = this.entries!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Entries {
  String? aPI;
  String? description;
  String? auth;
 // bool? hTTPS;
  String? cors;
  String? link;
  String? category;

  Entries(
      {this.aPI,
        this.description,
        this.auth,
       // this.hTTPS,
        this.cors,
        this.link,
        this.category});

  Entries.fromJson(Map<String, dynamic> json) {
    aPI = json['API'];
    description = json['Description'];
    auth = json['Auth'];
   // hTTPS = json['HTTPS'];
    cors = json['Cors'];
    link = json['Link'];
    category = json['Category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['API'] = this.aPI;
    data['Description'] = this.description;
    data['Auth'] = this.auth;
   // data['HTTPS'] = this.hTTPS;
    data['Cors'] = this.cors;
    data['Link'] = this.link;
    data['Category'] = this.category;
    return data;
  }
}
//
class info {
  String? ip;
  String? city;
  String? region;
  String? country;
  String? loc;
  String? org;
  String? postal;
  String? timezone;
  String? readme;

  info(
      {this.ip,
        this.city,
        this.region,
        this.country,
        this.loc,
        this.org,
        this.postal,
        this.timezone,
        this.readme});

  info.fromJson(Map<String, dynamic> json) {
    ip = json['ip'];
    city = json['city'];
    region = json['region'];
    country = json['country'];
    loc = json['loc'];
    org = json['org'];
    postal = json['postal'];
    timezone = json['timezone'];
    readme = json['readme'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ip'] = this.ip;
    data['city'] = this.city;
    data['region'] = this.region;
    data['country'] = this.country;
    data['loc'] = this.loc;
    data['org'] = this.org;
    data['postal'] = this.postal;
    data['timezone'] = this.timezone;
    data['readme'] = this.readme;
    return data;
  }
}
//
class countrie {
  int? count;
  String? name;
  List<Country>? country;

  countrie({this.count, this.name, this.country});

  countrie.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    name = json['name'];
    if (json['country'] != null) {
      country = <Country>[];
      json['country'].forEach((v) {
        country!.add(new Country.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['name'] = this.name;
    if (this.country != null) {
      data['country'] = this.country!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Country {
  String? countryId;
  double? probability;

  Country({this.countryId, this.probability});

  Country.fromJson(Map<String, dynamic> json) {
    countryId = json['country_id'];
    probability = json['probability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_id'] = this.countryId;
    data['probability'] = this.probability;
    return data;
  }
}
//
class gen {
  int? count;
  String? name;
  String? gender;
  double? probability;

  gen({this.count, this.name, this.gender, this.probability});

  gen.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    name = json['name'];
    gender = json['gender'];
    probability = json['probability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['name'] = this.name;
    data['gender'] = this.gender;
    data['probability'] = this.probability;
    return data;
  }
}
//
class food {
  bool? success;
  List<OfferDtls>? offerDtls;

  food({this.success, this.offerDtls});

  food.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['offerDtls'] != null) {
      offerDtls = <OfferDtls>[];
      json['offerDtls'].forEach((v) {
        offerDtls!.add(new OfferDtls.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.offerDtls != null) {
      data['offerDtls'] = this.offerDtls!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OfferDtls {
  int? offerId;
  String? resName;
  String? resImage;
  String? offerImage;
  String? validFrom;
  String? validTo;
  String? description;

  OfferDtls(
      {this.offerId,
        this.resName,
        this.resImage,
        this.offerImage,
        this.validFrom,
        this.validTo,
        this.description});

  OfferDtls.fromJson(Map<String, dynamic> json) {
    offerId = json['offerId'];
    resName = json['res_Name'];
    resImage = json['res_Image'];
    offerImage = json['offerImage'];
    validFrom = json['validFrom'];
    validTo = json['validTo'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offerId'] = this.offerId;
    data['res_Name'] = this.resName;
    data['res_Image'] = this.resImage;
    data['offerImage'] = this.offerImage;
    data['validFrom'] = this.validFrom;
    data['validTo'] = this.validTo;
    data['description'] = this.description;
    return data;
  }
}
//
class hotels {
  bool? success;
  List<RestaurantDtls>? restaurantDtls;

  hotels({this.success, this.restaurantDtls});

  hotels.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['restaurantDtls'] != null) {
      restaurantDtls = <RestaurantDtls>[];
      json['restaurantDtls'].forEach((v) {
        restaurantDtls!.add(new RestaurantDtls.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.restaurantDtls != null) {
      data['restaurantDtls'] =
          this.restaurantDtls!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RestaurantDtls {
  int? restaurantId;
  String? restaurantName;
  int? mobileNo;
  String? address;
  String? pincode;
  String? restaurantImage;
  int? restaurantRating;
  double? latitude;
  double? longtitude;
  String? type;
  String? shortAddress;

  RestaurantDtls(
      {this.restaurantId,
        this.restaurantName,
        this.mobileNo,
        this.address,
        this.pincode,
        this.restaurantImage,
        this.restaurantRating,
        this.latitude,
        this.longtitude,
        this.type,
        this.shortAddress});

  RestaurantDtls.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurantId'];
    restaurantName = json['restaurantName'];
    mobileNo = json['mobileNo'];
    address = json['address'];
    pincode = json['pincode'];
    restaurantImage = json['restaurantImage'];
    restaurantRating = json['restaurant_Rating'];
    latitude = json['latitude'];
    longtitude = json['longtitude'];
    type = json['type'];
    shortAddress = json['shortAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurantId'] = this.restaurantId;
    data['restaurantName'] = this.restaurantName;
    data['mobileNo'] = this.mobileNo;
    data['address'] = this.address;
    data['pincode'] = this.pincode;
    data['restaurantImage'] = this.restaurantImage;
    data['restaurant_Rating'] = this.restaurantRating;
    data['latitude'] = this.latitude;
    data['longtitude'] = this.longtitude;
    data['type'] = this.type;
    data['shortAddress'] = this.shortAddress;
    return data;
  }
}
//
class master {
  bool? success;
  List<ItemDtls>? itemDtls;

  master({this.success, this.itemDtls});

  master.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['itemDtls'] != null) {
      itemDtls = <ItemDtls>[];
      json['itemDtls'].forEach((v) {
        itemDtls!.add(new ItemDtls.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.itemDtls != null) {
      data['itemDtls'] = this.itemDtls!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ItemDtls {
  int? itemId;
  String? type;
  int? categoryId;
  String? categoryName;
  String? itemName;
  String? itemImage;

  ItemDtls(
      {this.itemId,
        this.type,
        this.categoryId,
        this.categoryName,
        this.itemName,
        this.itemImage});

  ItemDtls.fromJson(Map<String, dynamic> json) {
    itemId = json['itemId'];
    type = json['type'];
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    itemName = json['itemName'];
    itemImage = json['itemImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemId'] = this.itemId;
    data['type'] = this.type;
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['itemName'] = this.itemName;
    data['itemImage'] = this.itemImage;
    return data;
  }
}
//
class employ {
  bool? success;
  List<EmployeeList>? employeeList;

  employ({this.success, this.employeeList});

  employ.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['employeeList'] != null) {
      employeeList = <EmployeeList>[];
      json['employeeList'].forEach((v) {
        employeeList!.add(new EmployeeList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.employeeList != null) {
      data['employeeList'] = this.employeeList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EmployeeList {
  int? employeeId;
  String? employeeName;
  String? mobile;
  String? userName;
  String? password;
  String? confirmPassword;
  Null? removedOn;
  Null? removedRemarks;
  int? createdBy;
  String? deviceId;

  EmployeeList(
      {this.employeeId,
        this.employeeName,
        this.mobile,
        this.userName,
        this.password,
        this.confirmPassword,
        this.removedOn,
        this.removedRemarks,
        this.createdBy,
        this.deviceId});

  EmployeeList.fromJson(Map<String, dynamic> json) {
    employeeId = json['employeeId'];
    employeeName = json['employeeName'];
    mobile = json['mobile'];
    userName = json['userName'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
    removedOn = json['removedOn'];
    removedRemarks = json['removedRemarks'];
    createdBy = json['createdBy'];
    deviceId = json['deviceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employeeId'] = this.employeeId;
    data['employeeName'] = this.employeeName;
    data['mobile'] = this.mobile;
    data['userName'] = this.userName;
    data['password'] = this.password;
    data['confirmPassword'] = this.confirmPassword;
    data['removedOn'] = this.removedOn;
    data['removedRemarks'] = this.removedRemarks;
    data['createdBy'] = this.createdBy;
    data['deviceId'] = this.deviceId;
    return data;
  }
}
//
class clients {
  bool? success;
  List<ClientList>? clientList;

  clients({this.success, this.clientList});

  clients.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['clientList'] != null) {
      clientList = <ClientList>[];
      json['clientList'].forEach((v) {
        clientList!.add(new ClientList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.clientList != null) {
      data['clientList'] = this.clientList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ClientList {
  int? clientId;
  String? clientName;
  String? phone;
  String? address;
  String? gst;
  String? website;
  String? email;
  String? contactPerson;
  String? phoneNumber;
  Null? removedOn;
  Null? removedRemarks;
  int? createdBy;

  ClientList(
      {this.clientId,
        this.clientName,
        this.phone,
        this.address,
        this.gst,
        this.website,
        this.email,
        this.contactPerson,
        this.phoneNumber,
        this.removedOn,
        this.removedRemarks,
        this.createdBy});

  ClientList.fromJson(Map<String, dynamic> json) {
    clientId = json['clientId'];
    clientName = json['clientName'];
    phone = json['phone'];
    address = json['address'];
    gst = json['gst'];
    website = json['website'];
    email = json['email'];
    contactPerson = json['contactPerson'];
    phoneNumber = json['phoneNumber'];
    removedOn = json['removedOn'];
    removedRemarks = json['removedRemarks'];
    createdBy = json['createdBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clientId'] = this.clientId;
    data['clientName'] = this.clientName;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['gst'] = this.gst;
    data['website'] = this.website;
    data['email'] = this.email;
    data['contactPerson'] = this.contactPerson;
    data['phoneNumber'] = this.phoneNumber;
    data['removedOn'] = this.removedOn;
    data['removedRemarks'] = this.removedRemarks;
    data['createdBy'] = this.createdBy;
    return data;
  }
}
//
class catego {
  bool? success;
  List<CategoryList>? categoryList;

  catego({this.success, this.categoryList});

  catego.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['categoryList'] != null) {
      categoryList = <CategoryList>[];
      json['categoryList'].forEach((v) {
        categoryList!.add(new CategoryList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.categoryList != null) {
      data['categoryList'] = this.categoryList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryList {
  int? categoryId;
  String? category;
  String? description;
  Null? deletedOn;
  Null? removedRemarks;
  int? createdBy;

  CategoryList(
      {this.categoryId,
        this.category,
        this.description,
        this.deletedOn,
        this.removedRemarks,
        this.createdBy});

  CategoryList.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    category = json['category'];
    description = json['description'];
    deletedOn = json['deletedOn'];
    removedRemarks = json['removedRemarks'];
    createdBy = json['createdBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['category'] = this.category;
    data['description'] = this.description;
    data['deletedOn'] = this.deletedOn;
    data['removedRemarks'] = this.removedRemarks;
    data['createdBy'] = this.createdBy;
    return data;
  }
}
//
class bord {
  List<Boards>? boards;

  bord({this.boards});

  bord.fromJson(Map<String, dynamic> json) {
    if (json['boards'] != null) {
      boards = <Boards>[];
      json['boards'].forEach((v) {
        boards!.add(new Boards.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.boards != null) {
      data['boards'] = this.boards!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Boards {
  String? board;
  String? title;
  int? wsBoard;
  int? perPage;
  int? pages;
  int? maxFilesize;
  int? maxWebmFilesize;
  int? maxCommentChars;
  int? maxWebmDuration;
  int? bumpLimit;
  int? imageLimit;
  Cooldowns? cooldowns;
  String? metaDescription;
  int? isArchived;
  int? spoilers;
  int? customSpoilers;
  int? userIds;
  int? countryFlags;
  int? codeTags;
  int? webmAudio;
  int? minImageWidth;
  int? minImageHeight;
  int? oekaki;
  int? sjisTags;
  BoardFlags? boardFlags;
  int? textOnly;
  int? requireSubject;
  int? mathTags;

  Boards(
      {this.board,
        this.title,
        this.wsBoard,
        this.perPage,
        this.pages,
        this.maxFilesize,
        this.maxWebmFilesize,
        this.maxCommentChars,
        this.maxWebmDuration,
        this.bumpLimit,
        this.imageLimit,
        this.cooldowns,
        this.metaDescription,
        this.isArchived,
        this.spoilers,
        this.customSpoilers,
        this.userIds,
        this.countryFlags,
        this.codeTags,
        this.webmAudio,
        this.minImageWidth,
        this.minImageHeight,
        this.oekaki,
        this.sjisTags,
        this.boardFlags,
        this.textOnly,
        this.requireSubject,
        this.mathTags});

  Boards.fromJson(Map<String, dynamic> json) {
    board = json['board'];
    title = json['title'];
    wsBoard = json['ws_board'];
    perPage = json['per_page'];
    pages = json['pages'];
    maxFilesize = json['max_filesize'];
    maxWebmFilesize = json['max_webm_filesize'];
    maxCommentChars = json['max_comment_chars'];
    maxWebmDuration = json['max_webm_duration'];
    bumpLimit = json['bump_limit'];
    imageLimit = json['image_limit'];
    cooldowns = json['cooldowns'] != null
        ? new Cooldowns.fromJson(json['cooldowns'])
        : null;
    metaDescription = json['meta_description'];
    isArchived = json['is_archived'];
    spoilers = json['spoilers'];
    customSpoilers = json['custom_spoilers'];
    userIds = json['user_ids'];
    countryFlags = json['country_flags'];
    codeTags = json['code_tags'];
    webmAudio = json['webm_audio'];
    minImageWidth = json['min_image_width'];
    minImageHeight = json['min_image_height'];
    oekaki = json['oekaki'];
    sjisTags = json['sjis_tags'];
    boardFlags = json['board_flags'] != null
        ? new BoardFlags.fromJson(json['board_flags'])
        : null;
    textOnly = json['text_only'];
    requireSubject = json['require_subject'];
    mathTags = json['math_tags'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['board'] = this.board;
    data['title'] = this.title;
    data['ws_board'] = this.wsBoard;
    data['per_page'] = this.perPage;
    data['pages'] = this.pages;
    data['max_filesize'] = this.maxFilesize;
    data['max_webm_filesize'] = this.maxWebmFilesize;
    data['max_comment_chars'] = this.maxCommentChars;
    data['max_webm_duration'] = this.maxWebmDuration;
    data['bump_limit'] = this.bumpLimit;
    data['image_limit'] = this.imageLimit;
    if (this.cooldowns != null) {
      data['cooldowns'] = this.cooldowns!.toJson();
    }
    data['meta_description'] = this.metaDescription;
    data['is_archived'] = this.isArchived;
    data['spoilers'] = this.spoilers;
    data['custom_spoilers'] = this.customSpoilers;
    data['user_ids'] = this.userIds;
    data['country_flags'] = this.countryFlags;
    data['code_tags'] = this.codeTags;
    data['webm_audio'] = this.webmAudio;
    data['min_image_width'] = this.minImageWidth;
    data['min_image_height'] = this.minImageHeight;
    data['oekaki'] = this.oekaki;
    data['sjis_tags'] = this.sjisTags;
    if (this.boardFlags != null) {
      data['board_flags'] = this.boardFlags!.toJson();
    }
    data['text_only'] = this.textOnly;
    data['require_subject'] = this.requireSubject;
    data['math_tags'] = this.mathTags;
    return data;
  }
}

class Cooldowns {
  int? threads;
  int? replies;
  int? images;

  Cooldowns({this.threads, this.replies, this.images});

  Cooldowns.fromJson(Map<String, dynamic> json) {
    threads = json['threads'];
    replies = json['replies'];
    images = json['images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['threads'] = this.threads;
    data['replies'] = this.replies;
    data['images'] = this.images;
    return data;
  }
}

class BoardFlags {
  String? s4CC;
  String? aDA;
  String? aN;
  String? aNF;
  String? aPB;
  String? aJ;
  String? aB;
  String? aU;
  String? bB;
  String? bM;
  String? bP;
  String? bS;
  String? cL;
  String? cO;
  String? cG;
  String? cHE;
  String? cB;
  String? dAY;
  String? dD;
  String? dER;
  String? dT;
  String? dIS;
  String? eQA;
  String? eQF;
  String? eQP;
  String? eQR;
  String? eQT;
  String? eQI;
  String? eQS;
  String? eRA;
  String? fAU;
  String? fLE;
  String? fL;
  String? gI;
  String? hT;
  String? iZ;
  String? lI;
  String? lT;
  String? lY;
  String? mA;
  String? mAU;
  String? mIN;
  String? nI;
  String? nUR;
  String? oCT;
  String? pAR;
  String? pC;
  String? pCE;
  String? pI;
  String? pLU;
  String? pM;
  String? pP;
  String? qC;
  String? rAR;
  String? rD;
  String? rLU;
  String? s1L;
  String? sCO;
  String? sHI;
  String? sIL;
  String? sON;
  String? sP;
  String? sPI;
  String? sS;
  String? sTA;
  String? sTL;
  String? sPT;
  String? sUN;
  String? sUS;
  String? sWB;
  String? tFA;
  String? tFO;
  String? tFP;
  String? tFS;
  String? tFT;
  String? tFV;
  String? tP;
  String? tS;
  String? tWI;
  String? tX;
  String? vS;
  String? zE;
  String? zS;
  String? aC;
  String? bL;
  String? cF;
  String? cM;
  String? cT;
  String? dM;
  String? eU;
  String? fC;
  String? gN;
  String? gY;
  String? jH;
  String? kN;
  String? mF;
  String? nB;
  String? nT;
  String? nZ;
  String? pR;
  String? rE;
  String? mZ;
  String? tM;
  String? tR;
  String? uN;
  String? wP;

  BoardFlags(
      {this.s4CC,
        this.aDA,
        this.aN,
        this.aNF,
        this.aPB,
        this.aJ,
        this.aB,
        this.aU,
        this.bB,
        this.bM,
        this.bP,
        this.bS,
        this.cL,
        this.cO,
        this.cG,
        this.cHE,
        this.cB,
        this.dAY,
        this.dD,
        this.dER,
        this.dT,
        this.dIS,
        this.eQA,
        this.eQF,
        this.eQP,
        this.eQR,
        this.eQT,
        this.eQI,
        this.eQS,
        this.eRA,
        this.fAU,
        this.fLE,
        this.fL,
        this.gI,
        this.hT,
        this.iZ,
        this.lI,
        this.lT,
        this.lY,
        this.mA,
        this.mAU,
        this.mIN,
        this.nI,
        this.nUR,
        this.oCT,
        this.pAR,
        this.pC,
        this.pCE,
        this.pI,
        this.pLU,
        this.pM,
        this.pP,
        this.qC,
        this.rAR,
        this.rD,
        this.rLU,
        this.s1L,
        this.sCO,
        this.sHI,
        this.sIL,
        this.sON,
        this.sP,
        this.sPI,
        this.sS,
        this.sTA,
        this.sTL,
        this.sPT,
        this.sUN,
        this.sUS,
        this.sWB,
        this.tFA,
        this.tFO,
        this.tFP,
        this.tFS,
        this.tFT,
        this.tFV,
        this.tP,
        this.tS,
        this.tWI,
        this.tX,
        this.vS,
        this.zE,
        this.zS,
        this.aC,
        this.bL,
        this.cF,
        this.cM,
        this.cT,
        this.dM,
        this.eU,
        this.fC,
        this.gN,
        this.gY,
        this.jH,
        this.kN,
        this.mF,
        this.nB,
        this.nT,
        this.nZ,
        this.pR,
        this.rE,
        this.mZ,
        this.tM,
        this.tR,
        this.uN,
        this.wP});

  BoardFlags.fromJson(Map<String, dynamic> json) {
    s4CC = json['4CC'];
    aDA = json['ADA'];
    aN = json['AN'];
    aNF = json['ANF'];
    aPB = json['APB'];
    aJ = json['AJ'];
    aB = json['AB'];
    aU = json['AU'];
    bB = json['BB'];
    bM = json['BM'];
    bP = json['BP'];
    bS = json['BS'];
    cL = json['CL'];
    cO = json['CO'];
    cG = json['CG'];
    cHE = json['CHE'];
    cB = json['CB'];
    dAY = json['DAY'];
    dD = json['DD'];
    dER = json['DER'];
    dT = json['DT'];
    dIS = json['DIS'];
    eQA = json['EQA'];
    eQF = json['EQF'];
    eQP = json['EQP'];
    eQR = json['EQR'];
    eQT = json['EQT'];
    eQI = json['EQI'];
    eQS = json['EQS'];
    eRA = json['ERA'];
    fAU = json['FAU'];
    fLE = json['FLE'];
    fL = json['FL'];
    gI = json['GI'];
    hT = json['HT'];
    iZ = json['IZ'];
    lI = json['LI'];
    lT = json['LT'];
    lY = json['LY'];
    mA = json['MA'];
    mAU = json['MAU'];
    mIN = json['MIN'];
    nI = json['NI'];
    nUR = json['NUR'];
    oCT = json['OCT'];
    pAR = json['PAR'];
    pC = json['PC'];
    pCE = json['PCE'];
    pI = json['PI'];
    pLU = json['PLU'];
    pM = json['PM'];
    pP = json['PP'];
    qC = json['QC'];
    rAR = json['RAR'];
    rD = json['RD'];
    rLU = json['RLU'];
    s1L = json['S1L'];
    sCO = json['SCO'];
    sHI = json['SHI'];
    sIL = json['SIL'];
    sON = json['SON'];
    sP = json['SP'];
    sPI = json['SPI'];
    sS = json['SS'];
    sTA = json['STA'];
    sTL = json['STL'];
    sPT = json['SPT'];
    sUN = json['SUN'];
    sUS = json['SUS'];
    sWB = json['SWB'];
    tFA = json['TFA'];
    tFO = json['TFO'];
    tFP = json['TFP'];
    tFS = json['TFS'];
    tFT = json['TFT'];
    tFV = json['TFV'];
    tP = json['TP'];
    tS = json['TS'];
    tWI = json['TWI'];
    tX = json['TX'];
    vS = json['VS'];
    zE = json['ZE'];
    zS = json['ZS'];
    aC = json['AC'];
    bL = json['BL'];
    cF = json['CF'];
    cM = json['CM'];
    cT = json['CT'];
    dM = json['DM'];
    eU = json['EU'];
    fC = json['FC'];
    gN = json['GN'];
    gY = json['GY'];
    jH = json['JH'];
    kN = json['KN'];
    mF = json['MF'];
    nB = json['NB'];
    nT = json['NT'];
    nZ = json['NZ'];
    pR = json['PR'];
    rE = json['RE'];
    mZ = json['MZ'];
    tM = json['TM'];
    tR = json['TR'];
    uN = json['UN'];
    wP = json['WP'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['4CC'] = this.s4CC;
    data['ADA'] = this.aDA;
    data['AN'] = this.aN;
    data['ANF'] = this.aNF;
    data['APB'] = this.aPB;
    data['AJ'] = this.aJ;
    data['AB'] = this.aB;
    data['AU'] = this.aU;
    data['BB'] = this.bB;
    data['BM'] = this.bM;
    data['BP'] = this.bP;
    data['BS'] = this.bS;
    data['CL'] = this.cL;
    data['CO'] = this.cO;
    data['CG'] = this.cG;
    data['CHE'] = this.cHE;
    data['CB'] = this.cB;
    data['DAY'] = this.dAY;
    data['DD'] = this.dD;
    data['DER'] = this.dER;
    data['DT'] = this.dT;
    data['DIS'] = this.dIS;
    data['EQA'] = this.eQA;
    data['EQF'] = this.eQF;
    data['EQP'] = this.eQP;
    data['EQR'] = this.eQR;
    data['EQT'] = this.eQT;
    data['EQI'] = this.eQI;
    data['EQS'] = this.eQS;
    data['ERA'] = this.eRA;
    data['FAU'] = this.fAU;
    data['FLE'] = this.fLE;
    data['FL'] = this.fL;
    data['GI'] = this.gI;
    data['HT'] = this.hT;
    data['IZ'] = this.iZ;
    data['LI'] = this.lI;
    data['LT'] = this.lT;
    data['LY'] = this.lY;
    data['MA'] = this.mA;
    data['MAU'] = this.mAU;
    data['MIN'] = this.mIN;
    data['NI'] = this.nI;
    data['NUR'] = this.nUR;
    data['OCT'] = this.oCT;
    data['PAR'] = this.pAR;
    data['PC'] = this.pC;
    data['PCE'] = this.pCE;
    data['PI'] = this.pI;
    data['PLU'] = this.pLU;
    data['PM'] = this.pM;
    data['PP'] = this.pP;
    data['QC'] = this.qC;
    data['RAR'] = this.rAR;
    data['RD'] = this.rD;
    data['RLU'] = this.rLU;
    data['S1L'] = this.s1L;
    data['SCO'] = this.sCO;
    data['SHI'] = this.sHI;
    data['SIL'] = this.sIL;
    data['SON'] = this.sON;
    data['SP'] = this.sP;
    data['SPI'] = this.sPI;
    data['SS'] = this.sS;
    data['STA'] = this.sTA;
    data['STL'] = this.sTL;
    data['SPT'] = this.sPT;
    data['SUN'] = this.sUN;
    data['SUS'] = this.sUS;
    data['SWB'] = this.sWB;
    data['TFA'] = this.tFA;
    data['TFO'] = this.tFO;
    data['TFP'] = this.tFP;
    data['TFS'] = this.tFS;
    data['TFT'] = this.tFT;
    data['TFV'] = this.tFV;
    data['TP'] = this.tP;
    data['TS'] = this.tS;
    data['TWI'] = this.tWI;
    data['TX'] = this.tX;
    data['VS'] = this.vS;
    data['ZE'] = this.zE;
    data['ZS'] = this.zS;
    data['AC'] = this.aC;
    data['BL'] = this.bL;
    data['CF'] = this.cF;
    data['CM'] = this.cM;
    data['CT'] = this.cT;
    data['DM'] = this.dM;
    data['EU'] = this.eU;
    data['FC'] = this.fC;
    data['GN'] = this.gN;
    data['GY'] = this.gY;
    data['JH'] = this.jH;
    data['KN'] = this.kN;
    data['MF'] = this.mF;
    data['NB'] = this.nB;
    data['NT'] = this.nT;
    data['NZ'] = this.nZ;
    data['PR'] = this.pR;
    data['RE'] = this.rE;
    data['MZ'] = this.mZ;
    data['TM'] = this.tM;
    data['TR'] = this.tR;
    data['UN'] = this.uN;
    data['WP'] = this.wP;
    return data;
  }
}


















