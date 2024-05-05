import "package:flutter/material.dart";
import "package:task_9/core/colors.dart";
import "package:task_9/core/text_styles.dart";

class InboxView extends StatelessWidget {
  const InboxView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.btn,
      appBar: AppBar(
        backgroundColor: AppColors.btn,
        leading: IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.arrow_back),
          color: AppColors.white,),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text('Joao Felix',
          style: getTitleStyle(),)
        
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_horiz,
            color: AppColors.white,),),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12)),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(45), 
                topRight: Radius.circular(45),),
             ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 85,top: 60),
                  child: Text('9:00 pm',
                  style: getSmallStyle(color: Colors.black),
                  ),
                  
                ),
                Container(
                  margin: const EdgeInsets.only(right: 75,left: 80),
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:20, top: 18),
                    child: Text('Hello dear',
                    style: getSmallStyle(color: Colors.black),),
                  ),
                ),
                const SizedBox(height: 10,),
                  
                   Container(
                     margin: const EdgeInsets.only(right: 75, left: 80),
                     height: 60,
                     decoration: BoxDecoration(
                     color: Colors.grey[200],
                     borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                   ),
                                     ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 18),
                        child: Text('How are you?',
                        style: getSmallStyle(color: Colors.black,),
                        ),
                      ),
                   ),
                 const SizedBox(height: 15,),
                  Padding(
                  padding: const EdgeInsets.only(left: 85,top: 50),
                  child: Text('Now',
                  style: getSmallStyle(color: Colors.black),
                  ),
                  
                ),
                Container(
                  margin: const EdgeInsets.only(right: 75,left: 80),
                  height: 100,
                  decoration: BoxDecoration(
                    color: AppColors.btn,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:15, top: 26),
                    child: Text('Not bad, i just finished swimming and had dinner with my parents.',
                    style: getSmallStyle(color: AppColors.white),),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(right: 75,left: 80),
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.btn,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:15, top: 20),
                    child: Text('What are you doing?',
                    style: getSmallStyle(color: AppColors.white),),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText:'Type your message here',
                      fillColor: Colors.grey[200],
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: AppColors.white),
                   ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: AppColors.white),
                    ),
                    suffixIcon: Icon(Icons.arrow_circle_right_outlined,
                    color: AppColors.btn,
                    size: 40,)
                    ),
                  ),
                ),
              ],
            ),
              ),
            ), 
            
        ],
      ),
    );
  }
}