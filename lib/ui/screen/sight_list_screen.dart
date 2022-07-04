import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);
  
  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  Sight? sight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        title: const Text('Список \nинтересных мест', style: TextStyle(color: Color.fromRGBO(59, 62, 91, 1), fontSize: 32)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SightCard(
          sight: Sight(
            name: 'Мечеть «Сердце Чечни»', 
            lat: '43°1903', 
            lon: '45°4138', 
            url: 'https://wikiway.com/upload/hl-photo/80f/0fc/mechet_serdce_chechni_9.jpg', 
            details: 'краткое описание', 
            type: 'мечеть',
          ),
        ),
        SightCard(
          sight: Sight(
            name: 'Казеной-Ам',
            lat: '42°4638',
            lon: '46°0911',
            url: 'https://static.tildacdn.com/tild3765-6532-4638-b931-363965303163/1.jpg', 
            details: 'краткое описание',
            type: 'природа',
          ),
        ),
        SightCard(
          sight: Sight(
            name: 'Галанчож',
            lat: '42°87216',
            lon: '45°30388',
            url: 'https://grozny-inform.ru/LoadedImages/2019/06/05/17126911_1850573848516186_3673281925344133120_n_2_w1200_h800.jpg',
            details: 'краткое описание',
            type: 'природа',
          ),
        ),
          ],
        ),
      ),
    );
  }
}