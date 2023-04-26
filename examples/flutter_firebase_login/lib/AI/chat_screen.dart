import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

import 'chatmessage.dart';
import 'threedots.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<ChatMessage> _messages = [];
  bool _isTyping = false;

  @override
  void initState() {
    super.initState();
  
  }

  void _sendMessage() {
    if (_controller.text.isEmpty) return;

    final String messageText = _controller.text.toLowerCase();
    ChatMessage message = ChatMessage(
      text: messageText,
      sender: "user",
    );

    setState(() {
      _messages.insert(0, message);
      _isTyping = true;
    });

    _controller.clear();

    bool isTravelQuery = false;

    if (messageText.contains('travel') ||
        messageText.contains('vacation') ||
        messageText.contains('holiday') ||
        messageText.contains('trip') ||
        messageText.contains('destination') ||
        messageText.contains('hotel') ||
        messageText.contains('flight') ||
        messageText.contains('booking') ||
        messageText.contains('tourist')) {
      isTravelQuery = true;
    }

    if (!isTravelQuery) {
      insertNewData('Sorry, I can only assist with travel-related queries.');
      return;
    }

    insertNewData(messageText);
  }

  Future<void> insertNewData(String responseText,
      {bool isImage = false,}) async {
   

    var headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer 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',
     
    };

    var request = http.Request(
        'POST', Uri.parse('https://api.openai.com/v1/chat/completions'),);
    request.headers.addAll(headers);
    request.body = json.encode({
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "user", "content": responseText}
      ]
    });

    try {
      http.StreamedResponse response = await request.send();

      // Process the response
      if (response.statusCode == 200) {
        var jsonResponse = await response.stream.bytesToString();
        var decodedResponse = jsonDecode(jsonResponse);
        var text = decodedResponse['choices'][0]['message']['content'].toString();
        ;

        if (text != null) {
          setState(() {
            _isTyping=false;
            _messages.insert(
              0,
              ChatMessage(
                text: text,
                sender: 'RoamAI',
              ),
            );
          });
        } else {
          print('The response text is null.');
        }
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print('Request failed: $e');
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildTextComposer() {
    final scrollController = ScrollController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller,
                  onSubmitted: (value) => _sendMessage(),
                  decoration: const InputDecoration.collapsed(
                      hintText: "Ask me anything about Travel..."),
                ),
              ),
            ),
            ButtonBar(
              children: [
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage();
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("RoamAI")),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                  child: ListView.builder(
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _messages[index];
                },
              )),
              if (_isTyping) const ThreeDots(),
              const Divider(
                height: 1.0,
              ),
              Container(
                child: _buildTextComposer(),
              )
            ],
          ),
        ));
  }
}
