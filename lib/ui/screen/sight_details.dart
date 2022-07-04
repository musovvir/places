import 'package:flutter/material.dart';

import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/app_strings.dart';

// Детальная информация про место
class SightDetails extends StatelessWidget {
  final Sight sight;
  
  const SightDetails({
    Key? key,
    required this.sight,
  }) : super(key: key);

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
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.chevron_left),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: 152,
                  height: 7.57,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
                child: Text(sight.name,
                    style: const TextStyle(
                        color: Color.fromRGBO(59, 62, 91, 1), fontSize: 24,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 2),
                child: Row(
                  children:  [
                    Text(sight.type,
                        style: const TextStyle(
                          color: Color.fromRGBO(59, 62, 91, 1),
                          fontSize: 14,
                        ),),
                    const SizedBox(width: 10),
                    const Text(AppStrings.workingMode,
                        style: TextStyle(
                            color: Color.fromRGBO(124, 126, 146, 1),
                            fontSize: 14,),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Text(
                    sight.details,),
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.swap_calls),
                          SizedBox(width: 8),
                          Text(AppStrings.route),
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
                        Icon(
                          Icons.calendar_month,
                          color: Color.fromRGBO(124, 126, 146, 1),
                        ),
                        SizedBox(width: 10),
                        Text(
                          AppStrings.plan,
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
                        Icon(
                          Icons.favorite_border,
                          color: Color.fromRGBO(59, 62, 91, 1),
                        ),
                        SizedBox(width: 10),
                        Text(
                          AppStrings.favorite,
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
