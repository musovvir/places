import 'package:places/domain/sight.dart';
import 'package:places/domain/sightToVisit.dart';
import 'package:places/domain/visitedSight.dart';

// Список интересных мест
final List<Sight> sights = <Sight>[
  Sight(name: 'Мечеть «Сердце Чечни»', lat: '43°1903', lon: '45°4138', url: 'https://wikiway.com/upload/hl-photo/80f/0fc/mechet_serdce_chechni_9.jpg', details: 'Мечеть «Сердце Чечни» — одна из самых больших мечетей мира. Открыта 17 октября 2008 года и названа именем Ахмат-Хаджи Кадырова, первого президента Чеченской Республики.', type: 'мечеть'),
  Sight(name: 'Музей Чеченской Республики', lat: '43°3242', lon: '45°6807', url: 'https://pro.culture.ru/uploads/0159556f6f12b3e887e668c6f8affed9.JPG', details: 'Национальный музей Чеченской Республики был открыт 7 ноября 1924 года отделом народного образования Грозного. Первоначально был окружным музеем по истории культуры и религии. Он занимал две комнаты в одной из школ.', type: 'музей'),
  Sight(name: 'Цветочный парк', lat: '43°3155', lon: '45°6895', url: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/17/f4/0f/caption.jpg?w=1400&h=-1&s=1', details: '', type: 'парк'),
  Sight(name: 'Государственная галерея им. А.А. Кадырова', lat: '42°87216', lon: '45°30388', url: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/2e/ca/e7/caption.jpg?w=1400&h=-1&s=1', details: 'Государственное бюджетное учреждение культуры «Государственная галерея им. А.А. Кадырова» создано Распоряжением Правительства Чеченской Республики №143-р от 12 апреля 2010 г.', type: 'галерея'),
  Sight(name: 'Грозненское море', lat: '43°2625', lon: '45°6681', url: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/98/14/3c/caption.jpg?w=1000&h=-1&s=1', details: 'Одним из любимых мест отдыха и развлечений горожан и гостей города является Грозненское водохранилище, или как его называют в народе – Грозненское море. Это искусственное сооружение, площадью более 100 квадратных километров, располагается на высоте 170 метров над уровнем моря и поражает своими масштабами. Для гостей здесь оборудована современная инфраструктура, открыта пятизвездочная гостиница с двухуровневым рестораном, развлекательный семейный центр Аква, детский городок, спортивный корпус и многое другое. Также на территории водохранилища оборудована и пляжная территория, причем мужская и женская зоны отделены друг от друга.', type: 'водохранилище'),
  Sight(name: 'Национальная библиотека Чеченской Республики им. Абузара Айдамирова', lat: '43°1927', lon: '45°4105', url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D1%82%D0%B5%D0%BA%D0%B0_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8.JPG/1920px-%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D1%82%D0%B5%D0%BA%D0%B0_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8.JPG', details: 'Национа́льная библиоте́ка Чече́нской Респу́блики имени Абуза́ра Айдами́рова — первая публичная библиотека Грозного, основанная в 1904 году. В 1920 году была переведена на государственное финансирование, а в 1929 году, когда Грозный стал центром Чеченской автономной области, получила статус областной. В 1936 году Чечено-Ингушская область была преобразована в республику, а библиотека обрела статус республиканской. В 2013 году по случаю 80-летия со дня рождения Народного писателя Чечни Абузара Айдамирова Национальной библиотеке было присвоено его имя.', type: 'библиотека'),
];


// Список мест, которые хочу посетить
final List<SightToVisit> sightToVisit = <SightToVisit>[
  SightToVisit(
    name: 'Мечеть «Сердце Чечни»',
    plan: 'Запланировано на 12 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/17/f4/0f/caption.jpg?w=1400&h=-1&s=1',
    type: 'мечеть',
  ),
  SightToVisit(
    name: 'Музей Чеченской Республики',
    plan: 'Запланировано на 12 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9_%D0%BC%D1%83%D0%B7%D0%B5%D0%B9_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8_%28%D1%84%D0%B0%D0%B9%D0%BB_2%29.JPG/2560px-%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9_%D0%BC%D1%83%D0%B7%D0%B5%D0%B9_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8_%28%D1%84%D0%B0%D0%B9%D0%BB_2%29.JPG',
    type: 'музей',
  ),
  SightToVisit(
    name: 'Цветочный парк',
    plan: 'Запланировано на 12 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/17/f4/0f/caption.jpg?w=1400&h=-1&s=1',
    type: 'парк',
  ),
  SightToVisit(
    name: 'Государственная галерея им. А.А. Кадырова',
    plan: 'Запланировано на 12 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/2e/ca/e7/caption.jpg?w=1400&h=-1&s=1',
    type: 'галерея',
  ),
  SightToVisit(
    name: 'Грозненское море',
    plan: 'Запланировано на 12 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/98/14/3c/caption.jpg?w=1000&h=-1&s=1',
    type: 'водохранилище',
  ),
  SightToVisit(
    name: 'Национальная библиотека Чеченской Республики им. Абузара Айдамирова',
    plan: 'Запланировано на 12 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D1%82%D0%B5%D0%BA%D0%B0_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8.JPG/1920px-%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D1%82%D0%B5%D0%BA%D0%B0_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8.JPG',
    type: 'библиотека',
  ),
];

// Список посещенных мест
final List<VisitedSight> visitedSight = <VisitedSight>[
  VisitedSight(
    name: 'Мечеть «Сердце Чечни»',
    target: 'Цель достигнута 10 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/17/f4/0f/caption.jpg?w=1400&h=-1&s=1',
    type: 'мечеть',
  ),
  VisitedSight(
    name: 'Музей Чеченской Республики',
    target: 'Цель достигнута 10 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9_%D0%BC%D1%83%D0%B7%D0%B5%D0%B9_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8_%28%D1%84%D0%B0%D0%B9%D0%BB_2%29.JPG/2560px-%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9_%D0%BC%D1%83%D0%B7%D0%B5%D0%B9_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8_%28%D1%84%D0%B0%D0%B9%D0%BB_2%29.JPG',
    type: 'музей',
  ),
  VisitedSight(
    name: 'Цветочный парк',
    target: 'Цель достигнута 10 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/17/f4/0f/caption.jpg?w=1400&h=-1&s=1',
    type: 'парк',
  ),
  VisitedSight(
    name: 'Государственная галерея им. А.А. Кадырова',
    target: 'Цель достигнута 10 окт. 20206',
    workingTime: 'закрыто до 09:00',
    url:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/2e/ca/e7/caption.jpg?w=1400&h=-1&s=1',
    type: 'галерея',
  ),
  VisitedSight(
    name: 'Грозненское море',
    target: 'Цель достигнута 10 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/98/14/3c/caption.jpg?w=1000&h=-1&s=1',
    type: 'водохранилище',
  ),
  VisitedSight(
    name: 'Национальная библиотека Чеченской Республики им. Абузара Айдамирова',
    target: 'Цель достигнута 10 окт. 2020',
    workingTime: 'закрыто до 09:00',
    url:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D1%82%D0%B5%D0%BA%D0%B0_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8.JPG/1920px-%D0%9D%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D1%82%D0%B5%D0%BA%D0%B0_%D0%A7%D0%B5%D1%87%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B8.JPG',
    type: 'библиотека',
  ),
];
