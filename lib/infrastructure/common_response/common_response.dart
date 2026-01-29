import 'package:flutter/foundation.dart';

class CommonResponse<T> {
  bool? status;
  String? dioMessage;
  T? data;
  List<T>? listData;
  ErrorResponse? errors;
  Meta? meta;

  CommonResponse({
    this.status,
    this.dioMessage,
    this.data,
    this.listData,
    this.errors,
    this.meta,
  });

  CommonResponse.fromJson(Map<String, dynamic> json) {
    status = json['success'];
    dioMessage = json['message'];
    data = json['data'];
    errors = json['error'] != null
        ? ErrorResponse.fromJson(json['error'])
        : null;
    if (json.containsKey("pagination") && json["pagination"] != null) {
      meta = Meta.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = status;
    data['message'] = dioMessage;
    data['data'] = data;
    data['error'] = errors;
    try {
      if (errors != null) {
        data['error'] = errors?.toJson();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    if (meta != null) {
      data['pagination'] = meta?.toJson();
    }
    return data;
  }
}

class ErrorResponse {
  String? status;
  Message? message;

  ErrorResponse({this.status, this.message});

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'] != null
        ? Message.fromJson(json['message'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (message != null) {
      data['message'] = message?.toJson();
    }
    return data;
  }
}

class Message {
  List<Details>? details;

  Message({this.details});

  Message.fromJson(Map<String, dynamic> json) {
    if (json['details'] != null) {
      details = [];
      json['details'].forEach((v) {
        details?.add(Details.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (details != null) {
      data['details'] = details?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Details {
  String? message;
  List<String>? path;
  String? type;

  Details({this.message, this.path, this.type});

  Details.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    path = json['path'].cast<String>();
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['path'] = path;
    data['type'] = type;
    return data;
  }
}

class ErrorSimpleResponse {
  String? status;
  String? message;

  ErrorSimpleResponse({this.status, this.message});

  ErrorSimpleResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}

class Meta {
  int? total;
  int? lastPage;
  int? perPage;
  int? currentPage;
  int? from;
  int? to;

  Meta({
    this.total,
    this.lastPage,
    this.perPage,
    this.currentPage,
    this.from,
    this.to,
  });

  Meta.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    lastPage = json['last_page'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    from = json['from'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    data['last_page'] = lastPage;
    data['per_page'] = perPage;
    data['current_page'] = currentPage;
    data['from'] = from;
    data['to'] = to;
    return data;
  }
}

class AdditionalData {
  final bool isCardAdded;

  const AdditionalData({this.isCardAdded = false});

  Map<String, dynamic> toMap() {
    return {'isCardAdded': isCardAdded};
  }

  factory AdditionalData.fromMap(Map<String, dynamic> map) {
    return AdditionalData(isCardAdded: map['is_card_added'] as bool);
  }
}
