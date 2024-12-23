import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';


import 'ads_model.dart';

class AdController extends GetxController {
  var ads = <Ad>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAds();
  }

  Future<void> fetchAds() async {
    isLoading.value = true;
    try {
      final response = await http.get(Uri.parse('http://78.47.84.62:3100/api/ads?adType=Home'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        ads.value = (data['ads'] as List).map((ad) => Ad.fromJson(ad)).toList();
      } else {
        Get.snackbar('Error', 'Failed to fetch ads');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  // Ad getRandomAd() {
  //   if (ads.isNotEmpty) {
  //     return ads[Random().nextInt(ads.length)]; // Randomly pick an ad
  //   } else {
  //     return Ad(
  //       id: 0,
  //       title: 'No Ads Available',
  //       description: '',
  //       imageUrl: '',
  //       targetUrl: '',
  //       startDate: DateTime.now(),
  //       endDate: DateTime.now(),
  //       budget: 0,
  //       priority: 0,
  //       status: '',
  //       placement: '',
  //       adType: '',
  //       popupSize: '',
  //       frequency: '',
  //       timing: 0,
  //       closable: true,
  //       displayDuration: 0,
  //       createdAt: DateTime.now(),
  //       updatedAt: DateTime.now(),
  //     );
  //   }
  // }
}


class AdPopUpController extends GetxController {
  var ads = <Ad>[].obs;
  var isLoading = false.obs;
  var randomAd = Rxn<Ad>();  // This will hold the random ad

  @override
  void onInit() {
    super.onInit();
    fetchAds();  // Fetch ads when the controller is initialized
  }

  Future<void> fetchAds() async {
    isLoading.value = true;
    try {
      final response = await http.get(Uri.parse('http://78.47.84.62:3100/api/ads?adType=Popup'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        ads.value = (data['ads'] as List).map((ad) => Ad.fromJson(ad)).toList();
        // Pick a random ad after ads are fetched
        _pickRandomAd();
      } else {
        Get.snackbar('Error', 'Failed to fetch ads');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  void _pickRandomAd() {
    if (ads.isNotEmpty) {
      final random = Random();
      randomAd.value = ads[random.nextInt(ads.length)];
    }
  }
}