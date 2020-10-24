import 'package:Localhost/ecrans/Login/components/text_field_container.dart';
import 'package:flutter/material.dart';




class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onchange;
  const RoundedPasswordField({
    Key key, this.onchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onchange,
        decoration: InputDecoration(
          hintText: "Mot de passe",
          icon: Icon(Icons.lock, 
          color: Colors.indigo,
        ),
        suffixIcon: Icon(Icons.visibility,  color: Colors.indigo
        ),
        border: InputBorder.none
        ),
      ),
    );
  }
}