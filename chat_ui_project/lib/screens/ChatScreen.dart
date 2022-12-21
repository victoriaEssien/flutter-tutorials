import 'package:chat_ui_project/widgets/listview.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
      appBar: AppBar(

        title: Text("Messages"),
        actions: [
          IconButton(icon: Icon(Icons.search_rounded), onPressed: (){},),
          IconButton(icon: Icon(Icons.phone), onPressed: (){},),
          IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: (){},),
        ],
        elevation: 0,
        backgroundColor: Colors.purple.withOpacity(0.7),
      ),
      body: ListView(
        children: [
          ChatListTileWidget(
              title: "Lizzie Olsen ❤",
              subtitle: "Heyyyy, were you able to check out...",
              leadingIcon: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeKmNV75IuqkoVkpz7L0WLJBkSQJpH5CRmUA&usqp=CAU",
              trailing: "11:07pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "Jane Doe",
              subtitle: "By 2 maybe?",
              leadingIcon: "https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg",
              trailing: "10:40pm"),
          Divider(),
          ChatListTileWidget(
              title: "Dave 🔥",
              subtitle: "...",
              leadingIcon: "https://manofmany.com/wp-content/uploads/2021/06/20-most-beautiful-cars-in-the-world-according-to-science-2020-maserati-mc20-57-65-.jpeg",
              trailing: "9:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "Mr Johnson",
              subtitle: "Seen",
              leadingIcon: "https://sourcesofinsight.com/wp-content/uploads/2015/02/InspirationalQuotes3.png",
              trailing: "9:00pm"),
          Divider(),
          ChatListTileWidget(
              title: "Jenna 🎉",
              subtitle: "Tomorrow 🎉🎉🎉🎉",
              leadingIcon: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/inspiration-quote-ins-002-design-template-660ac822e7f4cf56bd76cff1c031c1b9_screen.jpg?ts=1592806271",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
          Divider(),
          ChatListTileWidget(
              title: "John Doe 🎉",
              subtitle: "I'll get back to you 😏",
              leadingIcon: "https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?b=1&s=170667a&w=0&k=20&c=pXB7rDuplzthElrR4MD_AbaWjB_HfDyuksRtlbE43Io=",
              trailing: "10:45pm"),
        ],
      ),
    );
  }
}
