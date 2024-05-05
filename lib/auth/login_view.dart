import "package:flutter/material.dart";
import "package:task_9/auth/register_view.dart";
import "package:task_9/auth/widgets/custom_text_field.dart";
import "package:task_9/chat/chat_view.dart";
import "package:task_9/core/colors.dart";
import "package:task_9/core/text_styles.dart";
import "package:task_9/core/widgets/custom_button.dart";

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isNotShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 65,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzHI2jVj0HoiKrEk5y_BMV7hYk7WsjYaii7Lp3l-JFOQ&s'),
              ),
              const SizedBox(height: 20,),
              Text('Login to your account',
              style: getTitleStyle(color: AppColors.txt,fontsize: 25),),
               const SizedBox(height: 35,),
              const CustomTextField(
                label: 'Email',
                prefixIcon: Icons.email,
                ),
              const SizedBox(height: 22,),
             CustomTextField(
                obscureText: isNotShow,
                label:'Password', 
                prefixIcon: Icons.lock,
                suffixIcon: isNotShow ?Icons.visibility_off
                                      : Icons.remove_red_eye,
                  suffixOnPressed: () {
                    setState(() {
                      isNotShow = !isNotShow;
                    });
                  },),
                const SizedBox(height: 35,),
                CustomButton(
                  text: 'Login', 
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> const ChatView(),));
                  },),
             const SizedBox(height: 15,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?',
                style: getSmallStyle(color: Colors.black),),
                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> const RegisterView(),));
                  }, 
                  child: Text('Create account',
                  style: getSmallStyle(color: AppColors.txt, fontWeight: FontWeight.w600),)),
              
              ],
             ),
            ]
    ),

        ),
      ),
    );
  }
}