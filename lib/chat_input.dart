import 'package:flutter/material.dart';

class ChatTextInput extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();
  final void Function(String)? onTextChanged;
  final void Function(String)? onSend;

  ChatTextInput({
    super.key,
    this.onTextChanged,
    this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.black12,
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 8,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _textController,
                    keyboardType: TextInputType.multiline,
                    textCapitalization: TextCapitalization.sentences,
                    minLines: 1,
                    maxLines: 3,
                    onChanged: onTextChanged,
                    decoration: InputDecoration(
                      hintText: "Type your message here",
                      hintMaxLines: 1,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      hintStyle: const TextStyle(
                        fontSize: 16,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(
                          color: Colors.black26,
                          width: 0.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: Colors.lightBlue,
                      size: 24,
                    ),
                    onPressed: () {
                      if (_textController.text.trim() != '') {
                        if (onSend != null) {
                          onSend!(_textController.text.trim());
                        }
                        _textController.text = '';
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
