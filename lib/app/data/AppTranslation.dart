import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'ar_EG': {
          'OfferStatus.Request': 'انتظار الموافقة',
          'OfferStatus.Accept': 'فعال',
          'OfferStatus.Reject': 'مرفوض',
          'OfferStatus.Delete': 'عروض محذوف',
        }
      };
}
