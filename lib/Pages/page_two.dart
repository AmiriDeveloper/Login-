import 'package:flutter/material.dart';
import 'package:login/model/data.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height / 10.0,
                  width: size.width / 5.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: Column(children: const [
                    Text("Followers", style: TextStyle(fontSize: 15)),
                    SizedBox(height: 20),
                    Text("210", style: TextStyle(fontSize: 15)),
                  ]),
                ),
                Container(
                  height: size.height / 10.0,
                  width: size.width / 5.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: Column(children: const [
                    Text("Poste", style: TextStyle(fontSize: 15)),
                    SizedBox(height: 20),
                    Text("56", style: TextStyle(fontSize: 15)),
                  ]),
                ),
                Container(
                  height: size.height / 10.0,
                  width: size.width / 5.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: Column(children: const [
                    Text("Follow", style: TextStyle(fontSize: 15)),
                    SizedBox(height: 20),
                    Text("210", style: TextStyle(fontSize: 15)),
                  ]),
                ),
                Column(
                  children: [
                    Container(
                      height: size.height / 8.0,
                      width: size.width / 4.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          image: const DecorationImage(
                            image: AssetImage(
                              "images/me.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Name"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: size.height / 3.5,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SizedBox(
                      height: size.height / 4,
                      width: size.width / 2.5,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: size.height / 9.0,
                                width: size.width / 5.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2000),
                                    image: DecorationImage(
                                      image:
                                          NetworkImage(dataList[index].profile),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            const Text("Name"),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("Follow"),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          SizedBox(
            height: size.height / 0.5,
            width: double.maxFinite,
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                itemCount: 30,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  //  childAspectRatio: 2,
                  mainAxisExtent: 150,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.black,
                  );
                }),
          )
        ],
      ),
    );
  }
}
