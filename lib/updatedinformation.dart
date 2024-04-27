import 'package:flutter/material.dart';

import 'homescreen.dart';

class updatedinformation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Container(
        child: Scaffold(
            backgroundColor:  Color(0xffFFD8DF),
            appBar:AppBar(
              leading: IconButton( icon: Icon(Icons.arrow_back,
                color: Colors.black,), onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>homescreen()));
              },),
              backgroundColor: Color(0xffFFD8DF),
            ),
            extendBodyBehindAppBar: true,

           body:
            SingleChildScrollView(
                child:
                Column(

                    children: [
                      SizedBox(height: 50,),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('image/download.jpg'),
                            )
                        ),
                      ),
                      Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.all(10),
                              child: Row(
                                  children: [
                                    Expanded(child: Image.asset('image/download.jpg')),
                                  ]),
                            ),
                            Text('''
 .1 Ovarian disorders 
  
Ovarian disorders are diseases or conditions that primarily affect the ovaries, which make up part of the reproductive system of female, Ovarian disorders are very common. Involuntary infertility affects an estimated 15% of couples and disorders of ovulation account for 25–30% of the causes of infertility. In most cases, disorders of ovulation are attributable to a treatable, endocrine abnormality, some of the ovarian disorders include polycystic ovary syndrome (PCOS) . 
  
•	polycystic ovary syndrome (PCOS)  

in 1935, Stein and Leventhal first   described the polycystic ovary as a frequent cause of irregular ovulation or anovulation in obese women seeking treatment for subfertility.                                                                          Symptoms of PCOS include:  
•	irregular periods or no periods at all   
•	an increase in facial or body hair (hirsutism)   
•	loss of hair on your head   
•	being overweight, experiencing a rapid increase in weight or having difficulty losing weight   
•	oily skin, acne  
•	difficulty becoming pregnant (reduced fertility).                                                                             	•Depression and psychological problems can also result from having PCOS.  
The symptoms vary from woman to woman. Some women have very few mild symptoms, while others are affected more severely by a wider range of symptoms.
•	Stooped posture or fracture. The compression of the vertebrae may also cause a slight curving of the upper back. A stooped back is known as kyphosis, which can cause back and neck pain. It can even affect breathing due to the extra pressure on the airway and limited expansion of your lungs.                                                          Climacteric refers to the transitional period in a woman's life when reproductive function gradually declines, leading to the cessation of menstrual cycles and the onset of menopause. This phase typically occurs in the late 40s to early 50s, although the exact timing can vary. The term is often used synonymously with perimenopause.  
Menopause is a biological stage in a woman's life when she is no longer fertile and is marked by the cessation of menstruation.   
A woman is defined as postmenopausal from 1 year after her last period. The changes associated with menopause and the perimenopause (the years leading up to the menopause) occur when ovarian function diminishes and ceases. This includes the cessation of both egg (oocyte) maturation and sex hormone (principally estrogen and progesterone) secretion.  
Men continue to produce sperm into old age, but women have a finite number of oocytes at birth and the quantity declines with each menstrual cycle. The menopause is characterized by the eventual depletion of the oocyte store and cessation of menstruation. Menstrual cycle irregularity often occurs before periods stop completely.                                                                                                                                                                             * Symptoms of climacteric  
During perimenopause you might have symptoms such as hot flushes, night sweats, joint and muscle pain, vaginal dryness, mood changes. Menopause affects every woman differently.   
You may have no symptoms at all, or they might be brief and short-lived. For some women they are severe and distressing.   
You can still get menopause symptoms if you have had a hysterectomy (an operation to remove your womb).   
Other natural changes as you age can be intensified by menopause.             
 For example, you may lose some muscle strength and have a higher risk of conditions such as osteoporosis and heart disease.
        ''',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                              ),)




                          ]  ),
                    ])

            )));
  }

}
