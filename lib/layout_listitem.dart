import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildTitle(BuildContext contex);
  Widget buildSubtitle(BuildContext contex);
}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext  context){
    return Text(heading,style: TextStyle(
       color: Colors.amber,
       fontSize: 24,
       fontWeight: FontWeight.bold
       )
       );
  }
  @override
  Widget buildSubtitle(BuildContext  context){
    return const SizedBox.shrink();
  }
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender,this.body);

  @override
  Widget buildTitle(BuildContext context){
    return Text(sender);
  }

  @override
  Widget buildSubtitle(BuildContext context){
    return Text(body);
  }
}

class LayoutListitem extends StatelessWidget {
  const LayoutListitem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(
    20,
    (i) => 1 % 6 == 0
    ? HeadingItem('Judul $i')
    : MessageItem('Sender $i', 'Message $i')
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('List dengan berbagai item'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          final item = items[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
        )
    );
  }
}