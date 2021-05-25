// To parse this JSON data, do
//
//     final requestHistoryModel = requestHistoryModelFromJson(jsonString);

import 'dart:convert';

List<RequestHistoryModel> requestHistoryModelFromJson(String str) => List<RequestHistoryModel>.from(json.decode(str).map((x) => RequestHistoryModel.fromJson(x)));

String requestHistoryModelToJson(List<RequestHistoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RequestHistoryModel {
    RequestHistoryModel({
        this.id,
        this.eventMakerId,
        this.eventMakerName,
        this.eventId,
        this.eventName,
        this.offerId,
        this.offerName,
        this.date,
        this.status,
        this.itemCount,
        this.foodProviderId,
        this.foodProviderName,
    });

    int id;
    String eventMakerId;
    String eventMakerName;
    int eventId;
    String eventName;
    int offerId;
    String offerName;
    DateTime date;
    int status;
    int itemCount;
    String foodProviderId;
    String foodProviderName;

    factory RequestHistoryModel.fromJson(Map<String, dynamic> json) => RequestHistoryModel(
        id: json["Id"],
        eventMakerId: json["EventMakerId"],
        eventMakerName: json["EventMakerName"],
        eventId: json["EventId"],
        eventName: json["EventName"],
        offerId: json["OfferId"],
        offerName: json["OfferName"],
        date: DateTime.parse(json["Date"]),
        status: json["Status"],
        itemCount: json["ItemCount"],
        foodProviderId: json["FoodProviderId"],
        foodProviderName: json["FoodProviderName"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "EventMakerId": eventMakerId,
        "EventMakerName": eventMakerName,
        "EventId": eventId,
        "EventName": eventName,
        "OfferId": offerId,
        "OfferName": offerName,
        "Date": date.toIso8601String(),
        "Status": status,
        "ItemCount": itemCount,
        "FoodProviderId": foodProviderId,
        "FoodProviderName": foodProviderName,
    };
}
