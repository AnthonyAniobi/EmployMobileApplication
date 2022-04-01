import 'package:flutter/material.dart';

class EmployerHome extends StatefulWidget {
  const EmployerHome({Key? key}) : super(key: key);

  @override
  _EmployerHomeState createState() => _EmployerHomeState();
}

class _EmployerHomeState extends State<EmployerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SliverAppBar(
          //   expandedHeight: 500,
          //   pinned: true,
          // ),
          SliverAppBar(
            expandedHeight: 500,
            floating: true,
            pinned: true,
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () async {
                    // final _temp = await NakamaAdmin().getUserData();
                    // print(_temp);
                    // print(await NakamaAdmin().getUserData());
                    // _scaffoldKey.currentState.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ))
            ],
            automaticallyImplyLeading: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              title: Text(
                "Pokedex",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // background: _buildCard(),
            ),
          )
        ],
      ),
    );
  }
}
