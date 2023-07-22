import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        hintColor: Colors.orange,
        fontFamily: 'Montserrat', // Example of using a custom font
      ),
      //home: LoginScreen(), // Change the home screen to LoginScreen
      home: CatalogScreen(),
    );
  }
}

/*
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isUsernameValid = true;
  bool _isPasswordValid = true;

  // Function to handle the login process
  void _login() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    // Perform basic validation
    bool isValid = true;
    if (username.isEmpty) {
      setState(() {
        _isUsernameValid = false;
        isValid = false;
      });
    } else {
      setState(() {
        _isUsernameValid = true;
      });
    }

    if (password.isEmpty) {
      setState(() {
        _isPasswordValid = false;
        isValid = false;
      });
    } else {
      setState(() {
        _isPasswordValid = true;
      });
    }

    if (isValid) {
      // In a real-world app, here you would make a server request to verify the credentials.
      // For this example, let's assume the username is "admin" and password is "12345".
      if (username == 'admin' && password == '12345') {
        // Navigate to the CatalogScreen after successful login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CatalogScreen()),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  errorText: _isUsernameValid ? null : 'Username is required',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  errorText: _isPasswordValid ? null : 'Password is required',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _login,
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
class Book {
  final String title;
  final String imageUrl;
  final String text;

  Book({required this.title, required this.imageUrl, required this.text});
}

class CatalogScreen extends StatelessWidget {
  final List<Book> books = [
    Book(
      title: "Alice's Adventures in Wonderland",
      imageUrl:
          "https://m.media-amazon.com/images/I/71QaSBYkf+L._AC_UY218_.jpg",
      text:
          "Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, ‘and what is the use of a book,’ thought Alice ‘without pictures or conversations?’ "
          "So she was considering in her own mind (as well as she could, for the hot day made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be worth the trouble of getting up and picking the daisies, when suddenly a White Rabbit with pink eyes ran close by her. "
          "There was nothing so very remarkable in that; nor did Alice think it so very much out of the way to hear the Rabbit say to itself, ‘Oh dear! Oh dear! I shall be late!’ (when she thought it over afterwards, it occurred to her that she ought to have wondered at this, but at the time it all seemed quite natural); but when the Rabbit actually took a watch out of its waistcoat-pocket, and looked at it, and then hurried on, Alice started to her feet, for it flashed across her mind that she had never before seen a rabbit with either a waistcoat-pocket, or a watch to take out of it, and burning with curiosity, she ran across the field after it, and fortunately was just in time to see it pop down a large rabbit-hole under the hedge. "
          "In another moment down went Alice after it, never once considering how in the world she was to get out again. "
          "The rabbit-hole went straight on like a tunnel for some way, and then dipped suddenly down, so suddenly that Alice had not a moment to think about stopping herself before she found herself falling down a very deep well. "
          "Either the well was very deep, or she fell very slowly, for she had plenty of time as she went down to look about her and to wonder what was going to happen next. First, she tried to look down and make out what she was coming to, but it was too dark to see anything; then she looked at the sides of the well, and noticed that they were filled with cupboards and book-shelves; here and there she saw maps and pictures hung upon pegs. She took down a jar from one of the shelves as she passed; it was labelled ‘ORANGE MARMALADE’, but to her great disappointment it was empty: she did not like to drop the jar for fear of killing somebody underneath, so managed to put it into one of the cupboards as she fell past it. "
          "‘Well!’ thought Alice to herself, ‘after such a fall as this, I shall think nothing of tumbling down stairs! How brave they’ll all think me at home! Why, I wouldn’t say anything about it, even if I fell off the top of the house!’ (Which was very likely true.) "
          "Down, down, down. Would the fall never come to an end? ‘I wonder how many miles I’ve fallen by this time?’ she said aloud. ‘I must be getting somewhere near the centre of the earth. Let me see: that would be four thousand miles down, I think—’ (for, you see, Alice had learnt several things of this sort in her lessons in the schoolroom, and though this was not a very good opportunity for showing off her knowledge, as there was no one to listen to her, still it was good practice to say it over) ‘—yes, that’s about the right distance—but then I wonder what Latitude or Longitude I’ve got to?’ (Alice had no idea what Latitude was, or Longitude either, but thought they were nice grand words to say.) "
          "Presently she began again. ‘I wonder if I shall fall right through the earth! How funny it’ll seem to come out among the people that walk with their heads downward! The Antipathies, I think—’ (she was rather glad there was no one listening, this time, as it didn’t sound at all the right word) ‘—but I shall have to ask them what the name of the country is, you know. Please, Ma’am, is this New Zealand or Australia?’ (and she tried to curtsey as she spoke—fancy curtseying as you’re falling through the air! Do you think you could manage it?) ‘And what an ignorant little girl she’ll think me for asking! No, it’ll never do to ask: perhaps I shall see it written up somewhere.’",
    ),
    Book(
      title: "Danilois my name!",
      imageUrl:
          "https://m.media-amazon.com/images/I/71gnJKdvVRL._AC_US218_..jpg",
      text: "This is just a text to see",
    ),
    Book(
      title: "My Old  Book 3",
      imageUrl:
          "https://m.media-amazon.com/images/I/81Yl44WhIXL._AC_US218_..jpg",
      text: "Text of Book 3",
    ),
    Book(
      title: "Book 4",
      imageUrl:
          "https://m.media-amazon.com/images/I/81MdU4OCK+L._AC_US218_..jpg",
      text: "Text of Book 4",
    ),
    Book(
      title: "Book 5",
      imageUrl:
          "https://m.media-amazon.com/images/I/81fcUP2To9L._AC_US218_..jpg",
      text: "Text of Book 5",
    ),
    Book(
      title: "Book 6",
      imageUrl:
          "https://m.media-amazon.com/images/I/613qV7uw13L._AC_US218_..jpg",
      text: "Text of Book 6",
    ),
    Book(
      title: "Book 7",
      imageUrl:
          "https://m.media-amazon.com/images/I/61VcWOo6mUL._AC_US218_..jpg",
      text: "Text of Book 7",
    ),
    Book(
      title: "Book 8",
      imageUrl:
          "https://m.media-amazon.com/images/I/91heA+AICTL._AC_US218_..jpg",
      text: "Text of Book 8",
    ),
    Book(
      title: "Book 9",
      imageUrl:
          "https://m.media-amazon.com/images/I/71MUQg1K5TL._AC_US218_..jpg",
      text: "Text of Book 9",
    ),
    // Add more books as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Catalog'),
        elevation: 1, // Remove the AppBar shadow
        backgroundColor:
            const Color.fromARGB(0, 151, 12, 12), // Make the AppBar transparent
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          // Add a background image
          image: DecorationImage(
            image: AssetImage('assets/background_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Adjust the number of columns here
            crossAxisSpacing: 1, // Adjust the spacing between columns here
            mainAxisSpacing: 1, // Adjust the spacing between rows here
            childAspectRatio:
                0.6, // Adjust the aspect ratio of each grid tile here
          ),
          itemCount: books.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetailScreen(book: books[index]),
                  ),
                );
              },
              child: Card(
                elevation: 14, // Add elevation to create a card-like effect
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Rounded corners for the card
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      books[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: Text(
                          books[index].title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text(book.title),
      ),*/
      body: SpeechScreen(book.title, book.text),
    );
  }
}

class SpeechScreen extends StatefulWidget {
  final String title;
  final String text;

  const SpeechScreen(this.title, this.text, {Key? key}) : super(key: key);

  @override
  _SpeechScreenState createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  late stt.SpeechToText _speech;
  late FlutterTts _tts;
  bool _isListening = false;
  late String _voice;
  Color _voiceColor = Colors.black;
  int _currentPartIndex = 0;

  final ScrollController _textScrollController = ScrollController();

  List<String> get textParts {
    final words = widget.text.split(RegExp(r'[.,?!:;-]'));
    //final words = widget.text.split(' ');;
    final List<String> parts = [];

    for (var word in words) {
      parts.add(word.trim() + (' '));
    }
    return parts;
  }

  String get currentPart => textParts[_currentPartIndex];

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _tts = FlutterTts();
    _voice = '';
  }

  Future<void> _speakText(String text) async {
    await _tts.setLanguage('en-US');
    await _tts.setSpeechRate(0.25);
    await _tts.speak(text);
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );

      if (available) {
        setState(() {
          _isListening = true;
        });

        _speech.listen(
          onResult: (val) => setState(() {
            _voice = val.recognizedWords;
            _processSpeech();
          }),
          onSoundLevelChange: (_) {},
          cancelOnError: true,
          listenFor: const Duration(seconds: 10),
        );

        Future.delayed(const Duration(seconds: 10), () {
          if (_isListening) {
            _speech.stop();
            setState(() {
              _isListening = false;
            });
          }
        });
      }
    }
  }

  void _processSpeech() {
    final List<String> specialWords = [
      'comma',
      'period',
      'question mark',
      'exclamation point',
      'colon',
      'semicolon',
      'hyphen',
    ];

    final List<String> specialSymbols = [
      ',',
      '.',
      '?',
      '!',
      ':',
      ';',
      '-',
    ];

    for (int i = 0; i < specialWords.length; i++) {
      final specialWord = specialWords[i];
      final specialSymbol = specialSymbols[i];

      if (_voice.toLowerCase() == specialWord) {
        setState(() {
          _voice = specialSymbol;
        });
        return;
      }
    }

    _verifyText();
  }

  void _verifyText() {
    final expectedText = currentPart.toLowerCase().trimRight();
    final voiceText = _voice.toLowerCase();

    if (expectedText == voiceText) {
      setState(() {
        _voiceColor = Colors.green;
        _currentPartIndex++;
        _voice = '';
        _scrollToNextPart();
      });
    } else {
      setState(() {
        _voiceColor = Colors.red;
      });
    }
  }

  void _scrollToNextPart() {
    if (_currentPartIndex < textParts.length - 1) {
      final nextPartIndex = _currentPartIndex + 1;
      const nextPartOffset = 5.0; // Adjust the padding value as needed
      print("----------SCROLL TO NEXT PART----------");
      print(nextPartOffset);
      _textScrollController.animateTo(
        nextPartOffset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _handleUnderlinedTextTap(String text) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Read Aloud'),
        content: const Text('Do you want to read the underlined line aloud?'),
        actions: [
          TextButton(
            onPressed: () {
              _speakText(text);
              Navigator.pop(context);
            },
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('No'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tts.stop();
    _textScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Center(
                child: SingleChildScrollView(
                  controller: _textScrollController,
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                      children: textParts.map((part) {
                        final underline = (part == currentPart);
                        return TextSpan(
                          text: part,
                          style: TextStyle(
                            decoration: underline
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            color: underline ? _voiceColor : Colors.black,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              if (underline) {
                                _handleUnderlinedTextTap(part);
                              }
                            },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _voice,
                  style: TextStyle(fontSize: 18.0, color: _voiceColor),
                ),
                ElevatedButton(
                  onPressed: _listen,
                  child: Icon(_isListening ? Icons.mic : Icons.mic_none),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
