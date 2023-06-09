import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hyper_garage_sale/src/ItemCollection.dart';
import 'package:hyper_garage_sale/widgets/photo-widgets.dart';

import '../screens/PostDetails.dart';

///A widget that shows all of the posted items

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('mxfinal')
          .orderBy(
            'createdAt',
            descending: true,
          )
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> postsSnapshot) {
        if (postsSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final postCollection = postsSnapshot.data!.docs;
        return ListView.builder(
            shrinkWrap: true,
            itemCount: postCollection.length,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              String _itemTitle = postCollection[index]['itemTitle'];
              String _price = postCollection[index]['price'];
              String _description = postCollection[index]['description'];
              List<dynamic> _imageUrl = postCollection[index]['userImage'];
              String _timeStamp = postCollection[index]['createdAt'].toString();
              String _username = postCollection[index]['username'];

              ItemCollection _detail = ItemCollection(_itemTitle, _price,
                  _username, _description, _imageUrl, _timeStamp);
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.all(10)),
                        OverviewImage(imageUrl: _imageUrl),
                        const Padding(padding: EdgeInsets.all(10)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _itemTitle,
                              maxLines: 3,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text('\$' + _price),
                          ],
                        ),
                        Expanded(
                          child: IconButton(
                            alignment: Alignment.centerRight,
                            icon: const Icon(Icons.arrow_forward_ios),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PostDetails(detail: _detail);
                              }));
                            },
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 8,
                      thickness: 1,
                      indent: 8,
                      endIndent: 8,
                      color: Colors.grey,
                    ),
                  ],
                ),
              );
            });
      },
    );
  }
}
