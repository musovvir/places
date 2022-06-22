import 'package:flutter/material.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 360,
                color: Colors.green,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36, left: 16),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white,),
                  child: const Icon(Icons.chevron_left),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: 152,
                  height: 7.57,
                  decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10),), color: Colors.black,),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 24),
                child: Text('Казеной-Ам', style: TextStyle(color: Color.fromRGBO(59, 62, 91, 1), fontSize: 24)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 2),
                child: Row(
                  children: const [
                    Text('природа', style: TextStyle(color: Color.fromRGBO(59, 62, 91, 1), fontSize: 14,)),
                    SizedBox(width: 10),
                    Text('открыто круглосуточно', style: TextStyle(color: Color.fromRGBO(124, 126, 146, 1), fontSize: 14)),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Text('Озеро Кезеной-Ам находится на границе Веденского района Чеченской республики и Ботлихского района Дагестана.розвали Андийским морем.'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: SizedBox(
                  height: 48,
                  child: ButtonTheme(
                    minWidth: 328,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.swap_calls),
                          SizedBox(width: 8),
                          Text('ПОСТРОИТЬ МАРШРУТ'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {}, 
                    child: Row(
                      children: const [
                        Icon(Icons.calendar_month, color: Color.fromRGBO(124, 126, 146, 1),),
                        SizedBox(width: 10),
                        Text('Запланировать', 
                          style: TextStyle(
                                  color: Color.fromRGBO(124, 126, 146, 1),
                                ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: Row(
                      children: const [
                        Icon(Icons.favorite_border, color: Color.fromRGBO(59, 62, 91, 1),),
                        SizedBox(width: 10),
                        Text('В избранное',
                          style: TextStyle(
                                  color: Color.fromRGBO(59, 62, 91, 1),
                                ),
                        ),
                      ],
                    ),
                  ),
                ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}