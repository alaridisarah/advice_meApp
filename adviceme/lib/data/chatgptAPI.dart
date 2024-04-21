import 'package:dio/dio.dart';

class ChatGPTApiService {
  final String apiKey = 'YOU_API_KEY';
  final String endpoint =
      'https://api.openai.com/v1/engines/text-davinci-003/completions';

  Future<String> getChatResponse(String prompt) async {
    try {
      final dio = Dio(BaseOptions(
        headers: {
          'Authorization': 'Bearer $apiKey',
          'Content-Type': 'application/json',
        },
      ));

      final response =
          await dio.post(endpoint, data: {'prompt': prompt, 'max_tokens': 150});

      if (response.statusCode == 200) {
        return response.data['choices'][0]['text'];
      } else {
        return 'Error: ${response.statusCode}';
      }
    } catch (e) {
      return 'Exception: $e';
    }
  }
}
