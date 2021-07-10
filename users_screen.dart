import 'package:flutter/material.dart';
import 'package:hamed_zizo/models/users/user_model.dart';



class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Zizo Mohamed',
      phone: '+201156658134',
    ),
    UserModel(
      id: 2,
      name: 'Assem Mohamed',
      phone: '+201142977990',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
    UserModel(
      id: 3,
      name: 'Abdallah Mohamed',
      phone: '+201142988540',
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 20,
                ),
                child: Container(
                  color: Colors.grey[400],
                  width: double.infinity,
                  height: 1,
                ),
              ),
          itemCount: users.length),
    );
  }
}

//arrow function = smaller statements
Widget buildUserItem(UserModel user) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue[700],
            child: Text(
              '${user.id}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, //عشان متتحدفش بعيد
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  '${user.name} ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
