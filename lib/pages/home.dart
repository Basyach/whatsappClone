import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/calls.dart';
import 'package:whatsapp_clone/pages/chats.dart';
import 'package:whatsapp_clone/pages/status.dart';
import 'package:whatsapp_clone/theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text('whatsapp'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: whiteColor,
          indicatorPadding: EdgeInsets.all(12),
          tabs: [
            IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
            Container(
                width: 50, alignment: Alignment.center, child: Text('Chats')),
            Container(
                width: 50, alignment: Alignment.center, child: Text('Status')),
            Container(
                width: 50, alignment: Alignment.center, child: Text('Calls')),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('camera'),
          //chat code
          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ChatPage(
                      images: 'assets/poto.png',
                      title: 'Basyach',
                      msg: 'ini wa tiruan saya',
                      not: '1',
                      time: '12:00',
                    ),
                    ChatPage(
                      images: 'assets/sayang.png',
                      title: 'sayang',
                      msg: 'kamu lagi apa',
                      not: '3',
                      time: '14:00',
                    ),
                    ChatPage(
                      images: 'assets/man1.png',
                      title: 'antony',
                      msg: 'bro gimana project nya',
                      not: '1',
                      time: '10:30',
                    ),
                    ChatPage(
                      images: 'assets/man2.png',
                      title: 'samuel',
                      msg: 'lari gak bas?',
                      not: '5',
                      time: '10:00',
                    ),
                    ChatPage(
                      images: 'assets/man3.png',
                      title: 'Rizki',
                      msg: 'mencengangkan',
                      not: '1',
                      time: '10:10',
                    ),
                    ChatPage(
                      images: 'assets/man4.png',
                      title: 'Dosen',
                      msg: 'kumpulkan tugasnya',
                      not: '1',
                      time: '09:00',
                    )
                  ],
                );
              }),
          // status page
          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    StatusPage(
                      images: 'assets/poto.png',
                      name: 'My status',
                      time: 'tap to add status update',
                    ),
                    Container(
                      color: Colors.grey[300],
                      padding: EdgeInsets.all(13),
                      child: Row(
                        children: [Text('Recent updates')],
                      ),
                    ),
                    StatusPage(
                      images: 'assets/sayang.png',
                      name: 'sayang',
                      time: '12.00',
                    ),
                    StatusPage(
                      images: 'assets/man1.png',
                      name: 'samuel',
                      time: '11.30',
                    ),
                    StatusPage(
                      images: 'assets/man2.png',
                      name: 'Rizki',
                      time: '10.30',
                    ),
                  ],
                );
              }),
          //call page
          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CallsPage(
                      images: 'assets/sayang.png',
                      title: 'Sayang',
                      time: 'Yesterday,11:14',
                    ),
                    CallsPage(
                      images: 'assets/man1.png',
                      title: 'Samuel',
                      time: 'yesterday,10.45',
                    ),
                  ],
                );
              }),
        ],
      ),
      floatingActionButton: _tabController.index == 1
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: lightgreenColor,
              child: Icon(Icons.message),
            ):
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: lightgreenColor,
              child: Icon(Icons.camera_alt),
            )
            
           
          
             
    );
  }
}
