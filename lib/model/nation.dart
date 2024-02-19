class nativ {
  String? message;
  String? status;

  nativ({this.message, this.status});

  nativ.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}
//
class resturants {
  bool? success;
  List<RestaurantDtls>? restaurantDtls;

  resturants({this.success, this.restaurantDtls});

  resturants.fromJson(Map<String, dynamic> json) {
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
  // double? latitude;
  // double? longtitude;
  String? itemName;
  int? price;
  String? itemImage;
  double? distance;
  String? isRestaurantORItem;
  String? restaurantImage;
  int? restaurantRating;
  int? itemRating;

  RestaurantDtls(
      {this.restaurantId,
        this.restaurantName,
        // this.latitude,
        // this.longtitude,
        this.itemName,
        this.price,
        this.itemImage,
        this.distance,
        this.isRestaurantORItem,
        this.restaurantImage,
        this.restaurantRating,
        this.itemRating});

  RestaurantDtls.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurantId'];
    restaurantName = json['restaurantName'];
    // latitude = json['latitude'];
    // longtitude = json['longtitude'];
    itemName = json['itemName'];
    price = json['price'];
    itemImage = json['itemImage'];
    distance = json['distance'];
    isRestaurantORItem = json['isRestaurantORItem'];
    restaurantImage = json['restaurantImage'];
    restaurantRating = json['restaurantRating'];
    itemRating = json['item_Rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurantId'] = this.restaurantId;
    data['restaurantName'] = this.restaurantName;
    // data['latitude'] = this.latitude;
    // data['longtitude'] = this.longtitude;
    data['itemName'] = this.itemName;
    data['price'] = this.price;
    data['itemImage'] = this.itemImage;
    data['distance'] = this.distance;
    data['isRestaurantORItem'] = this.isRestaurantORItem;
    data['restaurantImage'] = this.restaurantImage;
    data['restaurantRating'] = this.restaurantRating;
    data['item_Rating'] = this.itemRating;
    return data;
  }
}
//
class person {
 PaymentCreatedBy? paymentCreatedBy;
  PaymentCreatedBy? paymentDeletedBy;
  String? sId;
  String? paymentId;
  String? paymentMode;
  String? isActive;
  bool? status;
  String? createdAt;
  int? iV;
  String? updatedAt;
  String? deletedAt;

  person(
      {this.paymentCreatedBy,
        this.paymentDeletedBy,
        this.sId,
        this.paymentId,
        this.paymentMode,
        this.isActive,
        this.status,
        this.createdAt,
        this.iV,
        this.updatedAt,
        this.deletedAt});

  person.fromJson(Map<String, dynamic> json) {
    paymentCreatedBy = json['payment_created_by'] != null
        ? new PaymentCreatedBy.fromJson(json['payment_created_by'])
        : null;
    paymentDeletedBy = json['payment_deleted_by'] != null
        ? new PaymentCreatedBy.fromJson(json['payment_deleted_by'])
        : null;
    sId = json['_id'];
    paymentId = json['payment_id'];
    paymentMode = json['payment_mode'];
    isActive = json['isActive'];
    status = json['status'];
    createdAt = json['created_at'];
    iV = json['__v'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.paymentCreatedBy != null) {
      data['payment_created_by'] = this.paymentCreatedBy!.toJson();
    }
    if (this.paymentDeletedBy != null) {
      data['payment_deleted_by'] = this.paymentDeletedBy!.toJson();
    }
    data['_id'] = this.sId;
    data['payment_id'] = this.paymentId;
    data['payment_mode'] = this.paymentMode;
    data['isActive'] = this.isActive;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['__v'] = this.iV;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class PaymentCreatedBy {
  String? adminId;
  String? adminName;

  PaymentCreatedBy({this.adminId, this.adminName});

  PaymentCreatedBy.fromJson(Map<String, dynamic> json) {
    adminId = json['admin_id'];
    adminName = json['admin_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['admin_id'] = this.adminId;
    data['admin_name'] = this.adminName;
    return data;
  }
}
//
class native {
  List<Data>? data;
  List<Source>? source;

  native({this.data, this.source});

  native.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    if (json['source'] != null) {
      source = <Source>[];
      json['source'].forEach((v) {
        source!.add(new Source.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.source != null) {
      data['source'] = this.source!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? iDNation;
  String? nation;
  int? iDYear;
  String? year;
  int? population;
  String? slugNation;

  Data(
      {this.iDNation,
        this.nation,
        this.iDYear,
        this.year,
        this.population,
        this.slugNation});

  Data.fromJson(Map<String, dynamic> json) {
    iDNation = json['ID Nation'];
    nation = json['Nation'];
    iDYear = json['ID Year'];
    year = json['Year'];
    population = json['Population'];
    slugNation = json['Slug Nation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID Nation'] = this.iDNation;
    data['Nation'] = this.nation;
    data['ID Year'] = this.iDYear;
    data['Year'] = this.year;
    data['Population'] = this.population;
    data['Slug Nation'] = this.slugNation;
    return data;
  }
}

class Source {
  List<String>? measures;
  Annotations? annotations;
  String? name;
  // List<Null>? substitutions;

  Source({this.measures, this.annotations, this.name, });

  Source.fromJson(Map<String, dynamic> json) {
    measures = json['measures'].cast<String>();
    annotations = json['annotations'] != null
        ? new Annotations.fromJson(json['annotations'])
        : null;
    name = json['name'];
    // if (json['substitutions'] != null) {
    //   substitutions = <Null>[];
    //   json['substitutions'].forEach((v) {
    //     substitutions!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['measures'] = this.measures;
    if (this.annotations != null) {
      data['annotations'] = this.annotations!.toJson();
    }
    data['name'] = this.name;
    // if (this.substitutions != null) {
    //   data['substitutions'] =
    //       this.substitutions!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Annotations {
  String? sourceName;
  String? sourceDescription;
  String? datasetName;
  String? datasetLink;
  String? tableId;
  String? topic;
  String? subtopic;

  Annotations(
      {this.sourceName,
        this.sourceDescription,
        this.datasetName,
        this.datasetLink,
        this.tableId,
        this.topic,
        this.subtopic});

  Annotations.fromJson(Map<String, dynamic> json) {
    sourceName = json['source_name'];
    sourceDescription = json['source_description'];
    datasetName = json['dataset_name'];
    datasetLink = json['dataset_link'];
    tableId = json['table_id'];
    topic = json['topic'];
    subtopic = json['subtopic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source_name'] = this.sourceName;
    data['source_description'] = this.sourceDescription;
    data['dataset_name'] = this.datasetName;
    data['dataset_link'] = this.datasetLink;
    data['table_id'] = this.tableId;
    data['topic'] = this.topic;
    data['subtopic'] = this.subtopic;
    return data;
  }
}



