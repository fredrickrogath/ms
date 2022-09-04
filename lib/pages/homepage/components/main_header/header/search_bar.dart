import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../../../../../style/style_guide.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  SearchBarState createState() => SearchBarState();
}

class SearchBarState extends State<SearchBar> {
  // ignore: unused_field
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return SearchField(
      hint: 'Search item',
      searchStyle: TextStyle(
              fontSize: 18,
              color: Colors.red.withOpacity(0.8),
            ),
      searchInputDecoration: InputDecoration(
         hintStyle: const TextStyle(fontSize: 14.0,),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: iconColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2,
            color: iconColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10)
      ),
      maxSuggestionsInViewPort: 6,
      itemHeight: 50,
      suggestionsDecoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      onSubmit: (value) {
        setState(() {
          _selectedItem = value;
        });

        // print(value);
      },
      suggestions: [
        'Kikombe',
        'Suruali',
        'Rav 4',
        'Feni',
        'Pepsi',
        'Kuku',
        'Samaki',
        'Tecno C10',
        'Earphone Sony',
        'Dell L9745',
      ].map((e) => SearchFieldListItem(e)).toList(),
    );

    // Scaffold(
    //   appBar: AppBar(
    //     elevation: 0,
    //     backgroundColor: Colors.white,
    //     title: const Text(
    //       '@theflutterlover',
    //       style: TextStyle(
    //         color: Colors.black,
    //       ),
    //     ),
    //   ),
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       SizedBox(
    //         height: MediaQuery.of(context).size.height * 0.7,
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             const Padding(
    //               padding: EdgeInsets.all(20.0),
    //               child: Text(
    //                 'Select a country',
    //                 style: TextStyle(fontSize: 16, color: Colors.blueGrey),
    //               ),
    //             ),
    //             Container(
    //                 width: double.infinity,
    //                 margin: const EdgeInsets.symmetric(horizontal: 20),
    //                 decoration: BoxDecoration(
    //                   color: Colors.white,
    //                   borderRadius: BorderRadius.circular(10),
    //                   boxShadow: [
    //                     BoxShadow(
    //                       color: Colors.grey.withOpacity(0.2),
    //                       blurRadius: 10,
    //                       offset: Offset(0, 10),
    //                     ),
    //                   ],
    //                 ),
    //                 child: SearchField(
    //                   hint: 'Search',
    //                   searchInputDecoration: InputDecoration(
    //                     enabledBorder: OutlineInputBorder(
    //                       borderSide: BorderSide(
    //                         color: Colors.blueGrey.shade200,
    //                         width: 1,
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                     ),
    //                     focusedBorder: OutlineInputBorder(
    //                       borderSide: BorderSide(
    //                         width: 2,
    //                         color: Colors.blue.withOpacity(0.8),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                     ),
    //                   ),
    //                   maxSuggestionsInViewPort: 6,
    //                   itemHeight: 50,
    //                   suggestionsDecoration: BoxDecoration(
    //                     color: Colors.white,
    //                     borderRadius: BorderRadius.circular(10),
    //                   ),
    //                   onSubmit: (value) {
    //                     setState(() {
    //                       _selectedItem = value;
    //                     });

    //                     print(value);
    //                   },
    //                   suggestions: [
    //                     'Afghanistan',
    //                     'Turkey',
    //                     'Germany',
    //                     'France',
    //                     'Italy',
    //                     'Spain',
    //                     'United Kingdom',
    //                     'United States',
    //                     'Canada',
    //                     'Australia',
    //                     'New Zealand',
    //                     'India',
    //                     'Indonesia',
    //                     'Bangladesh',
    //                     'Sri Lanka',
    //                   ].map((e) => SearchFieldListItem(e)).toList(),
    //                 )),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         height: 90,
    //         padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
    //         decoration: const BoxDecoration(
    //           color: Colors.white,
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             _selectedItem == null
    //                 ? Text(
    //                     'Please select a Country to Continue',
    //                     style: TextStyle(fontSize: 16, color: Colors.blueGrey),
    //                   )
    //                 : Text(_selectedItem!,
    //                     style: TextStyle(
    //                         fontSize: 16,
    //                         color: Colors.grey.shade800,
    //                         fontWeight: FontWeight.w600)),
    //             MaterialButton(
    //               onPressed: () {},
    //               color: Colors.black,
    //               minWidth: 50,
    //               height: 50,
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(50),
    //               ),
    //               padding: EdgeInsets.all(0),
    //               child: Icon(
    //                 Icons.arrow_forward_ios,
    //                 color: Colors.blueGrey,
    //                 size: 24,
    //               ),
    //             )
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
// Footer
