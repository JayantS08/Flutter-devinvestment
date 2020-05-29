import 'package:devinvestment/CustomerFlow/Screens/Authenticate.dart';
import 'package:devinvestment/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Bank_Detail.dart';
//import 'welcome.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null)
      {
        return Authenticate();
      }
    else
      {
        return Detail();
      }
  }
}
