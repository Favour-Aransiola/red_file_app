import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:red_file/app/extensions/extensions.dart';
import 'package:red_file/app/views/file/widgets/myAppBar.dart';
import 'package:red_file/app/views/file/widgets/myBottomNav.dart';
import 'package:red_file/app/views/file/widgets/myList.dart';

class File extends StatelessWidget {
  const File({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
          slivers: [MyAppBar(), MyList()],
        ),
        bottomNavigationBar: MyBottomNav());
  }
}
