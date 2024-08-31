import 'package:flutter/material.dart';
import 'package:flutter_provider_masterclass/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<FavoriteProvider>(context, listen: true);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Card(
                    child: Consumer<FavoriteProvider>(builder: (context, value, child){
                      return ListTile(
                        onTap: () {
                          if (value.selectedItem.contains(index)) {
                            value.removeItem(index);
                          } else {
                            value.addItem(index);
                          }
                        },
                        title: Text('Item ' + index.toString()),
                        trailing: Icon(
                          Icons.favorite_border_outlined,
                          color: value.selectedItem.contains(index)
                              ? Colors.red
                              : Colors.white,
                        ),
                      );
                    }),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
