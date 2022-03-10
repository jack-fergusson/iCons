import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:accordion/accordion.dart';

class screensearch extends StatefulWidget {
  const screensearch({Key? key}) : super(key: key);

  @override
  _screensearchstate createState() => _screensearchstate();
}




class _screensearchstate extends State<screensearch> {
  final _headerStyle = const TextStyle(
      color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum = "description";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Explore'),
        backgroundColor: Color.fromRGBO(129, 17, 18, 1),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SearchPage())),
              icon: Icon(Icons.search))
        ],
      ),

      body: Accordion(
        maxOpenSections: 1,
        headerBackgroundColorOpened: Colors.black54,
        headerPadding:
        const EdgeInsets.symmetric(vertical: 30, horizontal: 15),

        children: [
          AccordionSection(
            headerBackgroundColor: Color.fromRGBO(129, 17, 18, 1),
            isOpen: false,
            leftIcon: const Icon(Icons.book_sharp, color: Colors.white),
            header: Text('TextBooks', style: _headerStyle),
            contentBorderColor: const Color.fromRGBO(129, 17, 18, 1),
            headerBackgroundColorOpened: Color.fromRGBO(88, 24, 69, 1),
            content: Row(
              children: [
                const Icon(Icons.book_sharp,
                    size: 120, color: Color.fromRGBO(88, 24, 69, 1)),
                Flexible(
                    flex: 1, child: Text("description", style: TextStyle(
                  color: Color.fromRGBO(129, 17, 18, 1),
                ),)),
              ],
            ),
          ),
          AccordionSection(
            headerBackgroundColor: Color.fromRGBO(129, 17, 18, 1),
            isOpen: false,
            leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
            header: Text('Lab Equipment', style: _headerStyle),
            contentBorderColor: const Color.fromRGBO(129, 17, 18, 1),
            headerBackgroundColorOpened: Color.fromRGBO(45, 125, 126, 1),
            content: Row(
              children: [
                const Icon(Icons.compare_rounded,
                    size: 120, color: Color.fromRGBO(45, 125, 126, 1)),
                Flexible(
                    flex: 1, child: Text("description", style: TextStyle(
                  color: Color.fromRGBO(129, 17, 18, 1),
                ),)),
              ],
            ),
          ),
          AccordionSection(
            headerBackgroundColor: Color.fromRGBO(129, 17, 18, 1),
            isOpen: false,
            leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
            header: Text('Materials', style: _headerStyle),
            contentBorderColor: const Color.fromRGBO(129, 17, 18, 1),
            headerBackgroundColorOpened: Color.fromRGBO(255, 87, 51, 1),
            content: Row(
              children: [
                const Icon(Icons.compare_rounded,
                    size: 120, color: Color.fromRGBO(255, 87, 51, 1)),
                Flexible(
                    flex: 1, child: Text("description", style: TextStyle(
                  color: Color.fromRGBO(129, 17, 18, 1),
                ),)),
              ],
            ),
          ),
          AccordionSection(
            headerBackgroundColor: Color.fromRGBO(129, 17, 18, 1),
            isOpen: false,
            leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
            header: Text('Room Rentals', style: _headerStyle),
            contentBorderColor: const Color.fromRGBO(129, 17, 18, 1),
            headerBackgroundColorOpened: Colors.orangeAccent,
            content: Row(
              children: [
                const Icon(Icons.compare_rounded,
                    size: 120, color: Colors.orangeAccent),
                Flexible(
                    flex: 1, child: Text("description", style: TextStyle(
                  color: Color.fromRGBO(129, 17, 18, 1),
                ),)),
              ],
            ),
          ),
          AccordionSection(
            headerBackgroundColor: Color.fromRGBO(129, 17, 18, 1),
            isOpen: false,
            leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
            header: Text('Student Success', style: _headerStyle),
            contentBorderColor: const Color.fromRGBO(129, 17, 18, 1),
            headerBackgroundColorOpened: Color.fromRGBO(0, 99, 68, 1),
            content: Row(
              children: [
                const Icon(Icons.compare_rounded,
                    size: 120, color: Color.fromRGBO(0, 99, 68, 1)),
                Flexible(
                    flex: 1, child: Text("description", style: TextStyle(
                  color: Color.fromRGBO(129, 17, 18, 1),
                ),)),
              ],
            ),
          ),
          AccordionSection(
            headerBackgroundColor: Color.fromRGBO(129, 17, 18, 1),
            isOpen: false,
            leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
            header: Text('Food', style: _headerStyle),
            contentBorderColor: const Color.fromRGBO(129, 17, 18, 1),
            headerBackgroundColorOpened: Color.fromRGBO(224, 121, 140, 1),
            content: Row(
              children: [
                const Icon(Icons.compare_rounded,
                    size: 120, color: Color.fromRGBO(224, 121, 140, 1)),
                Flexible(
                    flex: 1, child: Text("description", style: TextStyle(
                  color: Color.fromRGBO(129, 17, 18, 1),
                ),)),
              ],
            ),
          ),


        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.





    );

  }
}
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(129, 17, 18, 1),


          // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Color.fromARGB(50, 255, 255, 255), borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(

                    prefixIcon: Icon(Icons.search, color: Colors.white,),

                    suffixIcon: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(fontSize: 17, color: Colors.white),

                    border: InputBorder.none),
              ),
            ),
          )),

    );
  }
}

