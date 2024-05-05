import "package:flutter/material.dart";
import "package:task_9/chat/inbox_view.dart";
import "package:task_9/chat/model/user_model.dart";
import "package:task_9/chat/widgets/fav_contacts.dart";
import "package:task_9/core/colors.dart";
import "package:task_9/core/text_styles.dart";

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.btn,
      appBar: AppBar(
        backgroundColor: AppColors.btn,
          title: Text('Chats',
          style: getTitleStyle(fontsize: 28,),
          ),
          actions: [
             IconButton(onPressed: (){}, 
              icon: const Icon(Icons.settings),
              color: AppColors.white,
              iconSize: 30,),
          ],
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      backgroundColor: AppColors.btn,
      foregroundColor: AppColors.white,
      child: const Icon(Icons.add),
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FavoriteContacts(),
        Expanded(
          child: Container(
             padding: const EdgeInsets.symmetric(vertical: 16),
             decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), 
                topRight: Radius.circular(40),),
             ),
             child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> const InboxView(),));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(users[index].image,),
                    ),
                    title: Text(users[index].name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: getTitleStyle(color: Colors.black, fontsize: 18.5),),
                    subtitle: Text(users[index].lastMsg,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: getSmallStyle(fontsize: 15, color: Colors.black),),
                    trailing: Text(users[index].time,
                    style: getSmallStyle(color: Colors.black, fontsize: 14),
                    ),
                  ),
                );
              }, 
              separatorBuilder: (context,index){
                return const SizedBox(height: 4,);
              }, 
              itemCount: users.length),
          ),
          ),
      ],
    ),
    );
  }
}


