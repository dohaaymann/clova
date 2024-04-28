import 'package:flutter/material.dart';
var selectedvalue='Cairo';

class locationfield extends StatefulWidget{
  @override
  State<locationfield> createState() => _locationfieldState();
}

class _locationfieldState extends State<locationfield> {
  @override
  final locationlist=['Cairo','Giza','Alexandria','Beheira','Mansoura','Fayoum','Minya','Suez','Port Said',
  'Asyt','Hurghada','Sharkia','Tanta','Luxor','Aswan','Beni Suef'];



  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(

      padding: const EdgeInsets.all(16.0),
      child: DropdownButtonFormField(
        value: 'Cairo',
          items: locationlist.map((e) {
        return DropdownMenuItem(child: Text(e),value: e);
      }).toList() ,
          onChanged:(val){
        setState(() {
          selectedvalue=val as String;
        });
      }
      ,icon: Icon(Icons.keyboard_double_arrow_down_sharp,
      color: Colors.pink,
      ),
        dropdownColor: Color(0xffFFD8DF),
        decoration: InputDecoration(
          labelText: 'My Location',
         labelStyle: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.bold
         )
         , prefixIcon: Icon(
            Icons.location_on,
            color: Colors.pink,
          ),
           border:OutlineInputBorder(
             borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(
               color:Colors.purpleAccent,
             )
           ),
        ),

        
      ),
    );
  }
}