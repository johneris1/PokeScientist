import 'package:PokeScientists/App/Models/cientistas.model.dart';
import 'package:PokeScientists/App/Views/Widgets/personCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ListPersonPage extends StatefulWidget {
  ListPersonPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPersonPageState createState() => _ListPersonPageState();
}

class _ListPersonPageState extends State<ListPersonPage> {
  List<Person> _personList = [];
  List<Person> _filteredList = [];
  TextEditingController controller = TextEditingController();
  String filter = "";

  Widget appBarTitle = Text("Pesquisar");
  Icon actionIcon = Icon(Icons.search);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    PersonDataBuilder pdb = PersonDataBuilder();
    List<Person> tmpList = List<Person>();
    for (int i = 0; i < pdb.getPeople().length; i++) {
      tmpList.add(pdb.getPeople()[i]);
    }
    setState(() {
      _personList = tmpList;
      _filteredList = _personList;
    });
    controller.addListener(() {
      if (controller.text.isEmpty) {
        setState(() {
          filter = "";
          _filteredList = _personList;
        });
      } else {
        setState(() {
          filter = controller.text;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appTopAppBar = AppBar(
      elevation: 0.1,
      title: appBarTitle,
      actions: <Widget>[
        IconButton(
          icon: actionIcon,
          onPressed: () {
            setState(() {
              if (this.actionIcon.icon == Icons.search) {
                this.actionIcon = Icon(Icons.close);
                this.appBarTitle = TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    hintText: "Buscar",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  autofocus: true,
                  cursorColor: Colors.white,
                );
              } else {
                this.actionIcon = Icon(Icons.search);
                this.appBarTitle = Text("Pesquisar");
                _filteredList = _personList;
                controller.clear();
              }
            });
          },
        ),
      ],
    );

    if ((filter.isNotEmpty)) {
      List<Person> tmpList = List<Person>();
      for (int i = 0; i < _filteredList.length; i++) {
        if (_filteredList[i]
            .personFirstName
            .toLowerCase()
            .contains(filter.toLowerCase())) {
          tmpList.add(_filteredList[i]);
        }
      }
      _filteredList = tmpList;
    }

    final appBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: _personList == null ? 0 : _filteredList.length,
        itemBuilder: (BuildContext context, int index) {
          return personCard(_filteredList[index]);
        },
      ),
    );

    return Scaffold(
      appBar: appTopAppBar,
      body: appBody,
    );
  }
}
