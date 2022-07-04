import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/app_strings.dart';

// Поверхностная информация про место
class SightCard extends StatelessWidget {
  final Sight sight;
  
  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: 360,
      height: 192,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(245, 245, 245, 1),
        ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 360,
                height: 96,
                decoration: const BoxDecoration(
                  color:  Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text(sight.type, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                ),
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topRight,
                child: const Icon(Icons.favorite_border_outlined, color: Colors.white),
                ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sight.name, style: const TextStyle(fontSize: 16, color: Color.fromRGBO(59, 62, 91, 1),)),
                const Text(AppStrings.shortDescription, textAlign: TextAlign.left, style: TextStyle(color: Color.fromRGBO(124, 126, 146, 1), fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
