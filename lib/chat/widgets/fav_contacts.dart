import "package:flutter/material.dart";
import "package:task_9/chat/model/user_model.dart";
import "package:task_9/core/text_styles.dart";


class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child:  
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Favorite Contacts',
          style: getTitleStyle(fontsize: 21,),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context,index){
                return  Column(
                   children: [
                    CircleAvatar(
                      radius: 34,
                      backgroundImage: NetworkImage(users[index].image,),
                    ),
                    const SizedBox(height: 10,),
                    Text(users[index].name.split(' ')[0],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: getSmallStyle(),
                    ),
                   ],
                );
              }, 
              separatorBuilder: (context,index)=>
                const SizedBox(width: 12,),
              itemCount: users.length),
          ),
        ],
      ),
      );
  }
}