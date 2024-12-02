class Question{

  final String questionText;
  final List<String> answers;
  final int correctAnswerIndex;

  Question({required this.questionText, required this.answers, required this.correctAnswerIndex});
}
final List<Question> questions = [
  Question(
    questionText: 'Kompyuterning asosiy qurilmalariga qaysi biri kiradi?',
    answers: ['Printer', 'Protsessor', 'Monitor', 'USB fleshka'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Internet tarmog‘i qachon paydo bo‘lgan?',
    answers: ['1969', '1984', '1995', '2000'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'TCP/IP protokoli nima uchun ishlatiladi?',
    answers: [
      'Foydalanuvchini ro\'yxatga olish',
      'Ma\'lumotlarni uzatish',
      'Foydalanuvchi ma\'lumotlarini himoya qilish',
      'Qurilmalarni sozlash'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'RAM qanday qurilma?',
    answers: ['Doimiy xotira', 'Vaqtinchalik xotira', 'Ma\'lumot saqlovchi', 'Videokarta xotirasi'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'IPv4 manzillar necha bitdan iborat?',
    answers: ['16 bit', '32 bit', '64 bit', '128 bit'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'DNS (Domain Name System) nima vazifani bajaradi?',
    answers: [
      'Foydalanuvchini autentifikatsiya qilish',
      'Domen nomlarini IP manzillarga o‘zgartirish',
      'Ma\'lumotlarni siqish',
      'Fayllarni saqlash'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Kompyuter viruslarini aniqlash uchun qaysi dastur ishlatiladi?',
    answers: ['Antivirus', 'Driver', 'Firewall', 'BIOS'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'LAN tarmog‘i nimani anglatadi?',
    answers: ['Mahalliy tarmoq', 'Global tarmoq', 'Virtual tarmoq', 'Simsiz tarmoq'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'HTTP protokoli nima uchun ishlatiladi?',
    answers: [
      'Elektron pochta yuborish',
      'Web sahifalarni yuklash',
      'Fayllarni siqish',
      'Tarmoqni nazorat qilish'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Ping bu...?',
    answers: [
      'Foydalanuvchi xatolarini tekshirish',
      'Tarmoqdagi kechikishni o‘lchash',
      'Fayl yuklash tezligini oshirish',
      'Antivirus dasturi'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Ethernet nima?',
    answers: [
      'Tezkor xotira turi',
      'Mahalliy tarmoq texnologiyasi',
      'Internet provayderi',
      'Operatsion tizim'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Bit va bayt o‘rtasidagi bog‘liqlik qanday?',
    answers: ['1 bayt = 8 bit', '1 bit = 8 bayt', '1 bayt = 16 bit', '1 bit = 16 bayt'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Wi-Fi nima?',
    answers: [
      'Kompyuter protsessori turi',
      'Simsiz tarmoq texnologiyasi',
      'Brauzer nomi',
      'Server dasturi'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Modem nima vazifani bajaradi?',
    answers: [
      'Ma\'lumotlarni saqlash',
      'Elektr signallarini raqamli ma\'lumotlarga aylantirish',
      'Tarmoq qurilmalarini boshqarish',
      'Dasturlarni yuklash'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Kompyuterdagi operatsion tizimning vazifasi nima?',
    answers: [
      'Foydalanuvchi interfeysini ta\'minlash',
      'Tarmoq ulanishini boshqarish',
      'Qurilmalarni boshqarish',
      'Barchasi to‘g‘ri'
    ],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'URL nimani anglatadi?',
    answers: [
      'Tarmoq texnologiyasi',
      'Veb-sahifa manzili',
      'Operatsion tizimning qisqartmasi',
      'Internet xavfsizligi turi'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'SMTP protokoli qaysi maqsadda ishlatiladi?',
    answers: [
      'Elektron pochta yuborish',
      'Web sahifalarni yuklash',
      'Fayllarni siqish',
      'DNS xizmatlarini ta\'minlash'
    ],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Cloud computing nima?',
    answers: [
      'Bulutli saqlash texnologiyasi',
      'Kompyuter xatolarini tuzatish',
      'Fayl yuklash texnologiyasi',
      'Elektron pochta texnologiyasi'
    ],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'IP manzilning to‘g‘ri formati qaysi?',
    answers: ['192.168.1.1', '256.256.256.256', '123.45.678.90', '1234.567.89.01'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Kompyuterdagi "BIOS" ning asosiy vazifasi nima?',
    answers: [
      'Operatsion tizimni ishga tushirish',
      'Ma\'lumotlarni zaxiralash',
      'Grafik interfeysni boshqarish',
      'Tarmoq ulanishini boshqarish'
    ],
    correctAnswerIndex: 0,
  ),
  // Qo'shimcha savollar shu tartibda davom ettiriladi
];
