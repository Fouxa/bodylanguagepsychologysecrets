import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

import '../logic/bloc.dart';
import '../components/searchbar.dart';
import '../components/explore_list.dart';
import '../logic/search_results.dart';
import '../logic/bloc.dart';





class ExplorePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExplorePageState();
  }
}




class _ExplorePageState extends State<ExplorePage> with SingleTickerProviderStateMixin{

  TextEditingController _searchQueryController = TextEditingController();
  bool _isSearching = false;
  String searchQuery = "Search query";

  final FirebaseFirestore locationsFSI = FirebaseFirestore.instance;
  @override
  void initState() {
    _checkInternetConnection();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return
      Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(

                elevation: 0,
                backgroundColor:Colors.grey.withOpacity(0.1) ,
                centerTitle: true,

                leading: _isSearching ? const BackButton(color:  Colors.transparent) : Container(),
                title: _isSearching ? _buildSearchField() : Text("Articles",style: GoogleFonts.handlee(color: Theme.of(context).iconTheme.color, fontWeight: FontWeight.bold,fontSize: height/35),),
                actions: _buildActions(),
                bottom: PreferredSize(
                  child: Container(),
                  preferredSize: Size(0.0, 10.0),
                ),

                pinned: false,
                floating: true,
                 forceElevated: innerBoxIsScrolled,

              ),
            ];
          },
          body:



                StreamBuilder(
                  //This StreamBuilder is to fetch Search Querries.

                  initialData: '',
                  stream: bloc.recieveSearchVal,
                  builder: (BuildContext context, AsyncSnapshot searchSnapshot) {
                    String searchVal = searchSnapshot.data;
                    print(searchVal);
                    return
                      Container(
                        color:  Theme.of(context).scaffoldBackgroundColor,


                        //   constraints: BoxConstraints(minHeight: 200),
                        height: MediaQuery.of(context).size.height,
                        child: StreamBuilder(
                          stream: locationsFSI
                              .collection('locations')
                              .orderBy('articleTimestamp',descending: true)
                              .snapshots(),
                          builder: (BuildContext context, AsyncSnapshot snapshot) {
                            if (!snapshot.hasData) {
                              return Center(child: CircularProgressIndicator(color: Colors.yellow,));
                            } else if (searchVal != null && searchVal != '') {
                              return searchedExploreList(
                                  snapshot.data.docs, searchVal);
                            } else {
                              return exploreList(snapshot.data.docs);
                            }
                          },
                        ),
                      );


                  },

                ),



        ),
      );


      /*
      Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor:  Theme.of(context).scaffoldBackgroundColor,




      appBar: AppBar(

        elevation: 0,
         backgroundColor:Colors.yellow.withOpacity(0.5),
centerTitle: true,

         leading: _isSearching ? const BackButton(color:  Colors.transparent) : Container(),
        title: _isSearching ? _buildSearchField() : Text("Articles",style: GoogleFonts.handlee(color: Theme.of(context).iconTheme.color, fontWeight: FontWeight.bold,fontSize: height/35),),
        actions: _buildActions(),
      ),

      body:
      Column(

          children:[



      StreamBuilder(
      //This StreamBuilder is to fetch Search Querries.

      initialData: '',
      stream: bloc.recieveSearchVal,
      builder: (BuildContext context, AsyncSnapshot searchSnapshot) {
        String searchVal = searchSnapshot.data;
        print(searchVal);
        return
          Container(
            color:  Theme.of(context).scaffoldBackgroundColor,


            //   constraints: BoxConstraints(minHeight: 200),
            height: MediaQuery.of(context).size.height,
            child: StreamBuilder(
              stream: locationsFSI
                  .collection('locations')
                  .orderBy('articleTimestamp',descending: true)
                  .snapshots(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                } else if (searchVal != null && searchVal != '') {
                  return searchedExploreList(
                      snapshot.data.docs, searchVal);
                } else {
                  return exploreList(snapshot.data.docs);
                }
              },
            ),
          );


      },

    ),
      ]
    ),

    );


    */

  }


//For serach bar
  Widget _buildSearchField() {
    return


      TextField(
        cursorWidth: 3,
        cursorHeight: 25,
        cursorColor: Colors.yellowAccent,
      decoration: InputDecoration(
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(40.0),
        ),


          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(40.0),
          ),
focusColor: Colors.yellow,
        hoverColor: Colors.yellow,
        fillColor: Colors.grey.withOpacity(0.2),
        border: InputBorder.none,
        prefixIcon:  Icon(Icons.search_outlined,size: 25,color: Colors.grey,),
        hintText: '   Search Articles ',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18,
          fontStyle: FontStyle.italic,
        ),
      ),
      onChanged: (value) {
        bloc.feedSearchVal(value);
      },


      );


  }

  List<Widget> _buildActions() {
    if (_isSearching) {
      return <Widget>[
        IconButton(
          icon: const Icon(Icons.clear,color: Colors.transparent,),
          onPressed: () {
            if (_searchQueryController == null ||
                _searchQueryController.text.isEmpty) {
              Navigator.pop(context);
              return;
            }
            _clearSearchQuery();
          },
        ),
      ];
    }

    return <Widget>[
      IconButton(
        icon: const Icon(Icons.search,color: Colors.grey),
        onPressed: _startSearch,
      ),
    ];
  }

  void _startSearch() {
    ModalRoute.of(context)
        ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _searchQueryController.clear();
      updateSearchQuery("");
    });
  }




  Future<void> _checkInternetConnection() async {
    try {
      final response = await InternetAddress.lookup('www.google.com');
      if (response.isNotEmpty) {

      }
    } on SocketException catch (err) {


                  final snackBar = SnackBar(
                  duration: Duration(milliseconds: 3000),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                      color: Colors.yellow,
                      width: 3,
                      ),
                      ),
                      content: const Text('No internet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

            );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);



      if (kDebugMode) {
        final snackBar = SnackBar(
          duration: Duration(milliseconds: 3000),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Colors.yellow,
              width: 3,
            ),
          ),
          content: const Text('No internet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        print("No internet print message no  internet");
        print(err);
      }
    }
  }


}
