// home_view.dart
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key); // Added named key parameter

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 4, 126, 85),
          title: Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                )),
          ],
          bottom: TabBar(
              unselectedLabelColor: Colors.white.withOpacity(.7),
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4,

              //
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                ),
                Tab(text: 'CHATS'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS')
              ]),
        ),
        body: TabBarView(children: [
          Text('1st sceen'),

          //
          ListView.builder(
            itemCount: 11,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://e1.pxfuel.com/desktop-wallpaper/903/679/desktop-wallpaper-97-aesthetic-best-profile-pic-for-instagram-for-boy-instagram-dp-boys.jpg'),
                ),
                title: Text(
                  'Abrar jihad',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Hello, Abrar Jihad This is a text subtitle. hey hello ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
                trailing: Column(
                  children: [
                    Text(
                      '12:02 AM',
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 126, 85),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 4, 126, 85),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          //

          Text('data'),
          Text('data'),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 4, 126, 85),
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
