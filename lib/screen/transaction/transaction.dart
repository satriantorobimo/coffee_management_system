import 'package:coffee_management_system/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  TextEditingController searchController = new TextEditingController();
  List<String> litems = [];
  List<String> dataList;
  List<String> filterList;
  List<String> totalList = [];
  DateTime now = DateTime.now();
  String formattedDate;
  bool firstSearch = true;
  String query = "";

  @override
  void initState() {
    formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    dataList = new List<String>();
    dataList = [
      "Kopi Susu",
      "Single Origin",
      "Vietnam Coffee Hot",
      "Vietnam Coffee Ice",
      "Red Velvet Coffee",
      "Avocado Coffee"
    ];
    //sort data
    dataList.sort();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(120.0),
            child: AppBar(
                title: Text('Johnny, $formattedDate'),
                backgroundColor: Color(0xfff5b553),
                elevation: 2.0,
                centerTitle: false,
                flexibleSpace: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 70.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.search),
                      title: TextField(
                        controller: searchController,
                        onSubmitted: (text) {
                          litems.add(text); // Append Text to the list
                          searchController.clear(); // Clear the Text area
                          setState(() {}); // Redraw the Stateful Widget
                        },
                        decoration: InputDecoration(
                            hintText: 'Search', border: InputBorder.none),
                      ),
                      trailing: new IconButton(
                        icon: new Icon(Icons.cancel),
                        onPressed: () {
                          searchController.clear();
                          onSearchTextChanged('');
                        },
                      ),
                    ),
                  ),
                ))),
        body: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Transaction',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                firstSearch ? _createListView() : _performSearch()
              ],
            ),
            Positioned(
                bottom: -10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 3.0,
                    color: Color(0xfff5b553),
                    child: ListTile(
                        leading: Icon(Icons.shopping_cart, size: 32),
                        title: Text('Total Belanja : Rp 250.000',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                        subtitle: Text(
                            totalList == null
                                ? '0'
                                : '${totalList.length} Items',
                            style: TextStyle(fontSize: 12)),
                        trailing: Icon(Icons.arrow_forward_ios)),
                  ),
                ))
          ],
        ));
  }

  onSearchTextChanged(String text) async {
    searchController.clear();
    setState(() {});
  }

  _TransactionScreenState() {
    searchController.addListener(() {
      //menambahkan method yang akan dipanggil ketika object ada berubah
      if (searchController.text.isEmpty) {
        setState(() {
          firstSearch = true;
          query = "";
        });
      } else {
        //data tidak kosong
        setState(() {
          firstSearch = false;
          query = searchController.text;
        });
      }
    });
  }

  //widget untuk listview
  Widget _createListView() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: dataList.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: index == dataList.length - 1
                    ? const EdgeInsets.only(bottom: 100)
                    : const EdgeInsets.only(bottom: 8),
                child: Card(
                  elevation: 3.0,
                  color: Style.themeData().primaryColor,
                  margin: const EdgeInsets.all(4.0),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: ListTile(
                      leading: GestureDetector(
                          onTap: () {
                            if (totalList.isNotEmpty)
                              setState(() {
                                // totalList.removeAt(index);
                                totalList.removeWhere(
                                    (items) => items == dataList[index]);
                              });
                          },
                          child:
                              Icon(Icons.remove, size: 32, color: Colors.red)),
                      title: Text('${dataList[index]} - Rp.12.000',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      subtitle: Text('1 Items - Rp.12.000',
                          style: TextStyle(fontSize: 12)),
                      trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              totalList.add(dataList[index]);
                            });
                          },
                          child:
                              Icon(Icons.add, size: 32, color: Colors.green))),
                ),
              );
            }),
      ),
    );
  }

  //membuat widget untuk hasil search
  Widget _performSearch() {
    filterList = List<String>();
    for (int i = 0; i < dataList.length; i++) {
      var item = dataList[i];

      if (item.toLowerCase().contains(query.toLowerCase())) {
        print(item);
        filterList.add(item);
        print(filterList);
      }
    }
    return _createFilteredListView();
  }

//membuat listview untuk hasil search
  Widget _createFilteredListView() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: filterList.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Card(
                  elevation: 3.0,
                  color: Style.themeData().primaryColor,
                  margin: const EdgeInsets.all(4.0),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: ListTile(
                      leading: GestureDetector(
                          onTap: () {
                            if (totalList.isNotEmpty)
                              setState(() {
                                setState(() {
                                  totalList.removeAt(index);
                                });
                              });
                          },
                          child:
                              Icon(Icons.remove, size: 32, color: Colors.red)),
                      title: Text('${filterList[index]} - Rp.12.000',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      subtitle: Text('1 Items - Rp.12.000',
                          style: TextStyle(fontSize: 12)),
                      trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              totalList.add(filterList[index]);
                            });
                          },
                          child:
                              Icon(Icons.add, size: 32, color: Colors.green))),
                ),
              );
            }),
      ),
    );
  }
}
