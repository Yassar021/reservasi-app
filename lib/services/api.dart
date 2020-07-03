import 'package:http/http.dart' show Client;
import 'dart:convert';

class ApiService {
  final String baseUrl = "http://reservasi.desasinga.com";
  Client client = Client();

  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await client.post("$baseUrl/oauth/token", body: {
      "grant_type": "password",
      "client_id": "2",
      "client_secret": "bYBx7ffSMDaeCWEueyht1f5vDg13bujEIxTxLPdw",
      "username": email,
      "password": password
    });
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      String token = data["access_token"];
      return {"token": token, "error": false};
    } else {
      var data = json.decode(response.body);
      String message = data["message"];
      return {"message": message, "error": true};
    }
  }

  Future<Map<String, dynamic>> register(String email, String password,
      String name, String bio, String alamat, String telp) async {
    final response = await client.post("$baseUrl/api/regis", body: {
      "name": name,
      "email": email,
      "bio": bio,
      "password": password,
      "alamat": alamat,
      "telp": telp
    });
    if (response.statusCode == 201) {
      return {"message": "Berhasil registrasi.", "error": false};
    } else {
      return {"message": "terjadi kesalahan", "error": true};
    }
  }

  Future<Map<String, dynamic>> reservasi(
      String id, String tanggal, String token) async {
    final response = await client.post(
      "$baseUrl/api/reservasi",
      headers: {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      body: json.encode({"workspace_id": id, "tanggal": tanggal}),
    );
    if (response.statusCode == 201) {
      return {"message": "Sukses mereservasi.", "error": false};
    } else {
      return {"message": "Terjadi Kesalahan.", "error": true};
    }
  }

  Future getData(
    String token,
  ) async {
    final response = await client
        .get("$baseUrl/api/work", headers: {"Authorization": "Bearer $token"});
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List work = data["data"];
      return work;
    }
  }

  Future getUser(
    String token,
  ) async {
    final response = await client.get("$baseUrl/api/user/1",
        headers: {"Authorization": "Bearer $token"});
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data["data"];
    }
  }
}
