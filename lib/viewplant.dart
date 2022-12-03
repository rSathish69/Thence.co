import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class viewplant extends StatefulWidget {
  const viewplant({Key? key}) : super(key: key);

  @override
  State<viewplant> createState() => _viewplantState();
}

class _viewplantState extends State<viewplant> {

  bool isSelected = false;
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                color: Color(0xffdcd7d7),
                image: DecorationImage(
                    image: AssetImage("Echiveria-removebg-preview.png"),
                    fit: BoxFit.cover),
              ),
              child: Stack(children: [
                Positioned(
                  top: 7.0,
                  left: 7.0,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_rounded, size: 30.0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ]),
            ),
            Container(
              width: 4000,
              height: 300,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0, -10), color: Colors.white, blurRadius: 3),
              ]),
              child: Stack(
                children: [
                  const Positioned(
                    left: 20.0,
                    child: Text(
                      "Echiveria",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 60.0,
                      child: Text("19,5",style: TextStyle(fontSize: 22)),
                  ),
                  const Positioned(
                    right: 38,
                      child: Icon(Icons.attach_money)
                  ),
                  const Positioned(
                    left: 50,
                      bottom: 240,
                      child: Text("4,8",style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.amber,
                      )),
                  ),
                const Positioned(
                  left: 25,
                  bottom: 240,
                  child: Icon(Icons.star,color: Colors.amber,)
                ),
                  const Positioned(
                    bottom: 200,
                      left: 20,
                      child: Text("Choose size",style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.w500,
                      ),
                      ),
                  ),
                 Positioned(
                   bottom: 145,
                   left: 20,
                   child: Wrap(
                     spacing: 13,
                     children: [
                       filterChipWidget(chipName: ("18cm")),
                       filterChipWidget(chipName: ("20cm")),
                       filterChipWidget(chipName: ("24cm")),
                       filterChipWidget(chipName: ("30cm")),
                     ],
                   ),
                 ),
                  const Positioned(
                    bottom: 115,
                    left: 20,
                    child: Text("Description",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
               const    Positioned(
                      bottom: 90,
                      left: 20,
                      child: Text("At home, Echeveria feels great and looks great,",style: TextStyle(
                        fontSize: 16,color: Colors.black45),
                      ),
                  ),
                  const Positioned(
                      bottom: 70,
                      left: 20,
                      child: Text("and with proper care,even pleases with flowers.",
                      style: TextStyle(fontSize: 16,color: Colors.black45),
                      ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: 400,
                    height: 80,
                    child: FavoriteButton(
                      valueChanged: (_) {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                    backgroundColor: Colors.brown.shade300,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                    child: const Text("Add to cart"),
                  ),
                ),
                SizedBox(
                  width: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}



class filterChipWidget extends StatefulWidget {
  final String chipName;
       filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  State<filterChipWidget> createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {

  var isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(widget.chipName),
      selected: isSelected,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14))
      ),
      padding: EdgeInsets.all(13),
      selectedColor: Colors.brown.shade300,
      onSelected: (newState) {
        setState(() {
          isSelected = newState;
        }
        );
      },

    );
  }
}

