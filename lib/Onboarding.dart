

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:walid_project/login.dart';
import 'content_model.dart';
// import 'home.dart';

class Onboarding_1 extends StatefulWidget {
  const Onboarding_1({Key? key}) : super(key: key);

  @override
  State<Onboarding_1> createState() => _Onboarding_1State();
}

class _Onboarding_1State extends State<Onboarding_1> {
  var _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0 );
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:30,right: 15),
            child: Align(alignment: Alignment.topRight,
              child:InkWell(
                onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => login(),));
              },child: Text("Skip",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
            ),
          ),
          Expanded(
            child: PageView.builder(
              onPageChanged: (int index){
                setState(() {
                  numberIndex = index;
                });
              },
              controller: _controller,
              itemCount: contents.length,
              itemBuilder: (_,a){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        contents[a].image
                        ),
                      Align(
                        child:Text(
                          contents[a].title,textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),

                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20 , right: 20, left: 20),
            width: double.infinity,
            height:50,
            child: FloatingActionButton(
              child:  Text( numberIndex == contents.length - 1 ? "Continue" : "Next" ,
                style: TextStyle(
                  fontSize:18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              onPressed: (){
                if (numberIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>login(),
                    ),
                  );
                  }
                _controller.nextPage(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                );
              },
              backgroundColor: Color(0xffE73794),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            ),

          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(contents.length, (index) => box( index )
              ),
            ),
          ),


        ],
      ),
    );
  }

  Container box(int index ) {
    return Container(
              height: 10,
              width: numberIndex == index ? 30: 10,
              margin: EdgeInsets.only(bottom: 40 , right: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color:Color(0xffE73794)
              ),
            );
  }
  void textsonboarding(){
    if(numberIndex==0){

    }
  }
}
int numberIndex=0;
