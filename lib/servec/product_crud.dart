import 'dart:convert';
import 'package:http/http.dart' as http;

class Crud {
  Future gerData() async {
    var request = await http.get(Uri.parse("https://dummyjson.com/products"));
    if(request.statusCode == 200){
      var data = jsonDecode(request.body)["products"];
      return data;
    }else{
      return{
        "status":"400"
      };
    }
  }

  Future<bool> addData(String title) async {
    try{
      var request = await http.post(Uri.parse(
        'https://dummyjson.com/products/add',
      ),
      body: (
        {
          "title":title
        }
      ),
    );
    // print(request.statusCode);
    return request.statusCode == 201;
    }catch(e){
      return false;
    }
  }

  Future removeData(int id) async {
    try{
      var request = await http.delete(Uri.parse("https://dummyjson.com/products/${id}"));
      return request.statusCode == 200;
    }
    catch (e){
      return false;
    }
  }


}