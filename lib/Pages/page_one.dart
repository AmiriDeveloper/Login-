// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/data.dart';
import 'package:login/data.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMagin = size.width / 10;

    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
          itemCount: DataList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: ((context, index) {
            return SizedBox(
                height: size.height / 8,
                child: Stack(children: [
                  Padding(
                    padding: EdgeInsets.only(left: size.width / 1.3),
                    child: Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            DataList[index].profile,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Text("7/11", style: TextStyle(fontSize: 10)),
                              Icon(CupertinoIcons.camera)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width / 1.5,
                          height: 60,
                          child: Column(
                            children: [
                              Text(DataList[index].name,
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(right: 70),
                                child: Text(DataList[index].chat,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 15,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]));
          })),
    );
  }
}
