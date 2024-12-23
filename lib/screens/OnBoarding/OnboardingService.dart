import 'dart:convert';
import 'package:http/http.dart' as http;
import 'on_boarding-model.dart';

class OnboardingService {
  final String apiUrl = 'http://78.47.84.62:3100/api/on-boarding';

  Future<List<OnboardingModel>> fetchOnboardingData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return (data['onBoarding'] as List)
            .map((item) => OnboardingModel.fromJson(item))
            .toList();
      } else {
        throw Exception('Failed to load onboarding data');
      }
    } catch (e) {
      throw Exception('Error fetching onboarding data: $e');
    }
  }
}
