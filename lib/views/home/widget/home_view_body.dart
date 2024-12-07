import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 240,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color(0xFF368983),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35,left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: const Color.fromRGBO(250, 250, 250, 0.1),
                    child: const Icon(
                      Icons.notification_add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
               Positioned(
                 left: 300,
                 top: 35,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                  Text("صباح الخير",style: TextStyle(fontWeight:FontWeight.w500, fontSize: 20,color: Color.fromARGB(255, 224, 223, 223)),),
                  Text("أسماعيل ربيع",style: TextStyle(fontWeight:FontWeight.w600, fontSize: 20,color: Colors.white),),
                               ],),
               )
            ],
          ),
        )
      ],
    );
  }
}
