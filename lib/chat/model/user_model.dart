class UserModel{
  final String name;
  final String image;
  final String lastMsg;
  final String time;

  UserModel({
    required this.name,
    required this.image,
    required this.lastMsg,
    required this.time
  }
);
}
List <UserModel> users = [
    UserModel(
      name: 'Joao Felix', 
      image: 'https://pbs.twimg.com/media/FmHEB3cWAAAQ8ow.png', 
      lastMsg: 'Hello, How are you!', 
      time: '10:00 pm'),

    UserModel(
      name: 'Kylian Mbappe', 
      image: 'https://b.fssta.com/uploads/application/soccer/headshots/40670.png', 
      lastMsg: 'I miss you!', 
      time: '9:00 pm'),

    UserModel(
      name: 'Erling Haaland', 
      image: 'https://www.undercurrentnews.com/wp-content/uploads/2024/03/Screenshot-2024-03-20-at-08.49.20-e1710921020416.png', 
      lastMsg: 'Good luck in the match today', 
      time: '8:30 pm'),

    UserModel(
      name: 'Alisson Becker', 
      image: 'https://focus.independent.ie/thumbor/E8Zks-okpF6uuD3b-PedAII0R_o=/0x0:963x532/960x640/prod-mh-ireland/15e4337c-c30d-11ed-beb3-0210609a3fe2.png', 
      lastMsg: 'Be right back, call you tommorrow', 
      time: '8:25 pm'),

    UserModel(
      name: 'Sergio Roberto', 
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoTWQmInalw12wz0xrSGZWX7lGR-lu4X6Nz3-fomwuTA&s', 
      lastMsg: 'Please call me whenever you are free', 
      time: '7:54 pm'),

    UserModel(
      name: 'Mohamed Salah', 
      image: 'https://e0.365dm.com/22/01/768x432/skysports-mohamed-salah-liverpool_5638215.jpg?20220111105345', 
      lastMsg: 'Please call me whenever you are free', 
      time: '7:32 pm'),
    
    UserModel(
      name: 'Mason Mount', 
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHwpRjU_iRvz1SCEtUberbK15Jhu4HTMz26gvbp9BhAA&s', 
      lastMsg: 'Please call me whenever you are free', 
      time: '7:02 pm'),

    UserModel(
      name: 'Phil Foden', 
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2iZ9NQwwP8P18HOYBlHqyWBhRziCE3wKBq76cXO9b5g&s', 
      lastMsg: 'Please call me whenever you are free', 
      time: '6:50 pm'),

    UserModel(
      name: 'Manuel Neuer' , 
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/20180602_FIFA_Friendly_Match_Austria_vs._Germany_Manuel_Neuer_850_0723.jpg/800px-20180602_FIFA_Friendly_Match_Austria_vs._Germany_Manuel_Neuer_850_0723.jpg', 
      lastMsg: 'Hi manuel' , 
      time: '5:45 pm' )
];