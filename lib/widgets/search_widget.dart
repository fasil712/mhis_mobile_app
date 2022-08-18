import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const styleActive = TextStyle(color: Colors.black);
    const styleHint = TextStyle(color: Colors.black54);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Row(
      children: [
        Flexible(
            flex: 1,
            child: TextFormField(
              controller: controller,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: BorderSide.none),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
                prefixIcon: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Icon(Icons.search),
                  width: 18,
                ),
                suffixIcon: widget.text.isNotEmpty
                    ? GestureDetector(
                        child: Icon(Icons.close, color: style.color),
                        onTap: () {
                          controller.clear();
                          widget.onChanged('');
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                      )
                    : null,
              ),
              style: style,
              onChanged: widget.onChanged,
              textInputAction: TextInputAction.search,
            ))
      ],
    );
  }
}
