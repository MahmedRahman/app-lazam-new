import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/modules/request/list/model/request_model.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/offer_fb_request_history_controller.dart';

class OfferFbRequestHistoryView
    extends GetView<OfferFbRequestHistoryController> {
  OfferFbRequestHistoryController controller =
      Get.put(OfferFbRequestHistoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'عروض سابقة',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.windowClose),
                    onPressed: () {
                      Get.back();
                    },
                  )
                ],
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() {
                return FutureBuilder(
                    future: controller.listRequestHistory.value,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<RequestModel> listRequestHistory = snapshot.data;

                        if (listRequestHistory.length == 0) {
                          return Center(
                            child: Text('لا يوجد عروض سابقة'),
                          );
                        } else {
                          return ListView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: List.generate(
                              listRequestHistory.length,
                              (index) => requestHistoryItem(
                                requestHistory:
                                    listRequestHistory.elementAt(index),
                              ),
                            ),
                          );
                        }
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          backgroundColor: KprimaryColor,
                        ),
                      );
                    });
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget requestHistoryItem({@required RequestModel requestHistory}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: InkWell(
          onTap: () {
            print('object');

            // RequestModel requestModel = requestHistory as RequestModel;

            Get.toNamed(Routes.REQUEST_DETAIL, arguments: [requestHistory]);
          },
          child: Card(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'اسم صاحب المناسبة',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            requestHistory.eventMakerName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'اسم المناسبة',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            requestHistory.eventName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'التاريخ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            DateFormat.yMMMd()
                                .format(requestHistory.date)
                                .toString(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
