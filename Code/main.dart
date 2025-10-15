import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//MYAPP - Cấu hình Theme và Custom Font
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Text Styling Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18),
          bodyMedium: TextStyle(fontSize: 16),
        ),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const TextStylingDemo(),
    );
  }
}

// Trình diễn các thuộc tính văn bản
class TextStylingDemo extends StatelessWidget {
  const TextStylingDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling and Theming'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              '1. Màu sắc và Kích thước chữ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '(Sun)',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 217, 0)),
                    ),
                    TextSpan(
                      text: '(Mercury)',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.blueGrey),
                    ),
                    TextSpan(
                      text: '(Venus)',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
                    ),
                    TextSpan(
                      text: '(Moon)',
                      style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 100, 168, 175)),
                    ),
                    TextSpan(
                      text: '(Earth)',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 192, 19)),
                    ),
                    TextSpan(
                      text: '(Mars)',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextSpan(
                      text: '(Jupiter)',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 213, 121, 0)),
                    ),
                    TextSpan(
                      text: '[(Saturn)]',
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 180, 128, 79)),
                    ),
                    TextSpan(
                      text: '[(Uranus)]',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
                    ),
                    TextSpan(
                      text: '(Neptune)',
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 255)),
                    ),
                  ],
                ),
              ),
            ),

            const Divider(height: 30),

            // 2. FontWeight
            const Text(
              '2. FontWeight và FontStyle',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Row(
              children: const <Widget>[
                Text('Am Normal :D ', style: TextStyle(fontWeight: FontWeight.normal)),
                Text('Am Bold >:D ', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: const <Widget>[
                Text('100 ', style: TextStyle(fontWeight: FontWeight.w100)),
                Text('200 ', style: TextStyle(fontWeight: FontWeight.w200)),
                Text('300 ', style: TextStyle(fontWeight: FontWeight.w300)),
                Text('400 ', style: TextStyle(fontWeight: FontWeight.w400)),
                Text('500 ', style: TextStyle(fontWeight: FontWeight.w500)),
                Text('600 ', style: TextStyle(fontWeight: FontWeight.w600)),
                Text('700 ', style: TextStyle(fontWeight: FontWeight.w700)),
                Text('800 ', style: TextStyle(fontWeight: FontWeight.w800)),
                Text('900 ', style: TextStyle(fontWeight: FontWeight.w900)),
              ],
            ),
            const Text(
              'Hi am standing here :D',
              style: TextStyle(fontStyle: FontStyle.normal),
            ),
            const Text(
              'Help Am Falling!!!',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),

            const Divider(height: 30),

            // 3. Text Alignment
            const Text(
              '3. Text Alignment (TextAlign.center)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    'I am the Moon',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'I am the Earth',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'I am the Sun',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),

            const Divider(height: 30),

            // 4. Text Overflow
            const Text(
              '4. Text Overflow (TextOverflow.ellipsis)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Container(
            width: 1300, // giới hạn chiều rộng để dễ thấy overflow
            color: Color.fromARGB(50, 200, 200, 200), // màu nền nhẹ
            padding: const EdgeInsets.all(8.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
            Text(
              'Mặt Trời là ngôi sao ở trung tâm Hệ Mặt Trời, cung cấp ánh sáng và năng lượng cho mọi hành tinh, trong đó có Trái Đất. Nhờ có Mặt Trời mà sự sống trên Trái Đất mới tồn tại và phát triển được.',
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
            Text(
              'Trái Đất quay quanh Mặt Trời theo một quỹ đạo hình elip, đồng thời tự quay quanh trục của mình. Chính sự chuyển động này tạo ra ngày và đêm, cũng như các mùa trong năm mà chúng ta cảm nhận được.',
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
            Text(
              'Mặt Trăng là vệ tinh tự nhiên duy nhất của Trái Đất. Nó phản chiếu ánh sáng từ Mặt Trời, khiến bầu trời đêm trở nên sáng hơn. Khi Mặt Trời, Trái Đất và Mặt Trăng thẳng hàng, ta có thể thấy những hiện tượng kỳ thú như nhật thực và nguyệt thực.',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            ],
            ),
            ),
            const Divider(height: 30),
          ],
        ),
      ),
    );
  }
}