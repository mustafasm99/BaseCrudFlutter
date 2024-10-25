import 'package:app/servec/product_crud.dart';
import 'package:app/widget/error_widget.dart';
import 'package:flutter/material.dart';


var _prodect = Crud();


class FeedSection extends StatelessWidget {
  const FeedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
      future: _prodect.gerData(),
      builder: (BuildContext thisContaxt , AsyncSnapshot data){
        if(data.hasData){
            List<dynamic> items = data.data;
            return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                margin:const EdgeInsets.only(top: 10 , bottom: 10),
                padding:const EdgeInsets.all(5),
                height: 175,
                decoration:BoxDecoration(
                  borderRadius:const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                    width: 1,
                    color: Colors.white,
                    ),
                ),
                child:Column(
                  children: [
                    Text(
                      items[index]["title"],
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      items[index]["description"],
                      textAlign: TextAlign.left,
                      style:const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: (){
                        _prodect.removeData(items[index]["id"]);
                      },
                      icon:const Icon(
                        Icons.delete,
                        size: 25,
                        color: Colors.red,
                      )
                    )
                  ],
                ),
              );
            },
            );
        }
        if(data.hasError){
          return const CoustomErrorWidget();
        }
        else{
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }
      ),
    );
  }
}