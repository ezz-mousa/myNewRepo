import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: IconButton(
          onPressed: () {
            print('okay');
          },
          icon: Icon(Icons.menu),
        ),
        title: Text(
          'My First App',
        ),
        actions: [

          IconButton(
            onPressed: () {
              print('notification clicked');
            },
            icon: Icon(Icons.notification_important),
          ),
          IconButton(
            onPressed: () {
              print('Done');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.LDsQ29TlFXrJzO4-EvMRuwHaEo?w=284&h=180&c=7&o=5&dpr=1.25&pid=1.7',
                      ),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: 200,

                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      color: Colors.black.withOpacity(.8),
                      child: Text(
                        'Flower',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
