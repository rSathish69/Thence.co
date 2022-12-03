import 'package:flutter/material.dart';
import 'package:thence_assignment/viewplant.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);


  @override
  State<home> createState() => _homeState();

}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [Column(
            children: [
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("All Plants",
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text("Houseplants",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: 50,
                            decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text("All",style: TextStyle(fontSize: 20,color: Colors.black45)))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: 140,
                            decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text("succulents",style: TextStyle(fontSize: 20,color: Colors.black45)))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: 80,
                            decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text("In pots",style: TextStyle(fontSize: 20,color: Colors.black45)))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: 90,
                            decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text("pothos",style: TextStyle(fontSize: 20,color: Colors.black45)))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: 80,
                            decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text("Palms",style: TextStyle(fontSize: 20,color: Colors.black45)))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: 140,
                            decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text("Aglaonema",style: TextStyle(fontSize: 20,color: Colors.black45)))
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("By Popularity",style: TextStyle(color: Colors.black45,fontSize: 17)),
                  Icon(Icons.arrow_downward,color: Colors.black45,)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue.shade50),
                        width: 150,
                        height: 100,
                        child: const Image(image: AssetImage("plant1-removebg-preview.png")),
                      ),
                      Positioned(
                        right: 8,
                        bottom: 8,
                        child: Container(
                          child: Icon(Icons.favorite_border,color: Colors.black26,
                          ),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 80,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: const [
                            Text("Adromiscus",style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 18)),
                            SizedBox(
                              width: 14,
                            ),
                            Icon(Icons.star,color: Colors.amberAccent),
                            Text("4.5",style: TextStyle(color: Colors.amberAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                          bottom: 40,
                          child: Text("16 cm",style: TextStyle(color: Colors.black45),)),
                      const Positioned(
                          bottom: 5,
                          child: Text("16,5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                      const Positioned(
                          bottom: 3,
                          left: 30,
                          child: Icon(Icons.attach_money))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const viewplant();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red.shade50),
                          width: 150,
                          height: 100,
                          child: const Image(image: AssetImage("Echiveria-removebg-preview.png")),
                        ),
                      ),
                      Positioned(
                        right: 8,
                        bottom: 8,
                        child: Container(
                          child: Icon(Icons.favorite_border,color: Colors.black26,
                          ),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 80,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: const [
                            Text("Echiveria",style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 18)),
                            SizedBox(
                              width: 14,
                            ),
                            Icon(Icons.star,color: Colors.amberAccent),
                            Text("4.8",style: TextStyle(color: Colors.amberAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                          bottom: 40,
                          child: Text("18 cm",style: TextStyle(color: Colors.black45),)),
                      const Positioned(
                          bottom: 5,
                          child: Text("19,5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                      const Positioned(
                          bottom: 3,
                          left: 30,
                          child: Icon(Icons.attach_money))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.purple.shade50),
                        width: 150,
                        height: 100,
                        child: const Image(image: AssetImage("Haworthia-removebg-preview.png")),
                      ),
                      Positioned(
                        right: 8,
                        bottom: 8,
                        child: Container(
                          child: Icon(Icons.favorite_border,color: Colors.black26,
                          ),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 80,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: const [
                            Text("Haworthia",style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 18)),
                            SizedBox(
                              width: 14,
                            ),
                            Icon(Icons.star,color: Colors.amberAccent),
                            Text("4.2",style: TextStyle(color: Colors.amberAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                          bottom: 40,
                          child: Text("19 cm",style: TextStyle(color: Colors.black45),)),
                      const Positioned(
                          bottom: 5,
                          child: Text("22.5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                      const Positioned(
                          bottom: 3,
                          left: 30,
                          child: Icon(Icons.attach_money))
                    ],
                  ),
                ],
              ),
            ],
          ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.list),
              onPressed: () {},),
            IconButton(icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {},),
            IconButton(icon: Icon(Icons.favorite_border_outlined),
              onPressed: () {},),
            IconButton(icon: Icon(Icons.account_circle),
              onPressed: () {},),

          ],
        ),
      ),
    );
  }
}
