import 'package:flutter/material.dart';
import 'package:places/domain/sightToVisit.dart';

// Поверхностная информация про место
class SightToVisitCard extends StatelessWidget {
  final SightToVisit sightToVisit;
  
  const SightToVisitCard({
    Key? key,
    required this.sightToVisit,
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),),
                  child: Image.network(sightToVisit.url, fit: BoxFit.cover, loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      
                      return Center(child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text(sightToVisit.type, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                ),
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.share, color: Colors.white),
                    SizedBox(width: 10),
                    Icon(Icons.close, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(overflow: TextOverflow.ellipsis, maxLines: 1, sightToVisit.name, style: const TextStyle(fontSize: 16, color: Color.fromRGBO(59, 62, 91, 1),),),
                const SizedBox(height: 2),
                Text(sightToVisit.plan, textAlign: TextAlign.left, style: const TextStyle(color: Color.fromRGBO(76, 175, 80, 1), fontSize: 14)),
                const SizedBox(height: 10),
                Text(sightToVisit.workingTime, style: const TextStyle(fontSize: 16, color: Color.fromRGBO(124, 126, 146, 1),),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}