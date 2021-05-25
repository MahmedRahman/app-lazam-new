// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

List<RequestModel> requestModelFromJson(String str) => List<RequestModel>.from(json.decode(str).map((x) => RequestModel.fromJson(x)));

String requestModelToJson(List<RequestModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RequestModel {
    RequestModel({
        this.id,
        this.eventMakerId,
        this.eventMakerName,
        this.eventId,
        this.eventName,
        this.eventCategory,
        this.offerId,
        this.offerName,
        this.date,
        this.status,
        this.itemCount,
        this.foodProviderId,
        this.foodProviderName,
        this.eventMakerEmail,
        this.eventMakerPhone,
    });

    int id;
    String eventMakerId;
    String eventMakerName;
    int eventId;
    String eventName;
    String eventCategory;
    int offerId;
    String offerName;
    DateTime date;
    int status;
    int itemCount;
    String foodProviderId;
    String foodProviderName;
    String eventMakerEmail;
    String eventMakerPhone;

    factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
        id: json["Id"],
        eventMakerId: json["EventMakerId"],
        eventMakerName: json["EventMakerName"],
        eventId: json["EventId"],
        eventName: json["EventName"],
        eventCategory: json["EventCategory"],
        offerId: json["OfferId"],
        offerName: json["OfferName"],
        date: DateTime.parse(json["Date"]),
        status: json["Status"],
        itemCount: json["ItemCount"],
        foodProviderId: json["FoodProviderId"],
        foodProviderName: json["FoodProviderName"],
        eventMakerEmail: json["EventMakerEmail"],
        eventMakerPhone: json["EventMakerPhone"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "EventMakerId": eventMakerId,
        "EventMakerName": eventMakerName,
        "EventId": eventId,
        "EventName": eventName,
        "EventCategory": eventCategory,
        "OfferId": offerId,
        "OfferName": offerName,
        "Date": date.toIso8601String(),
        "Status": status,
        "ItemCount": itemCount,
        "FoodProviderId": foodProviderId,
        "FoodProviderName": foodProviderName,
        "EventMakerEmail": eventMakerEmail,
        "EventMakerPhone": eventMakerPhone,
    };
}
