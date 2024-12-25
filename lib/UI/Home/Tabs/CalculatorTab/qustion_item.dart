import 'package:flutter/material.dart';

class QuestionItem extends StatefulWidget {
  final String? title;
  final String question;
  final List<String> options;
  final void Function(String option, double value) onInputChanged;

  QuestionItem({
    this.title,
    required this.question,
    this.options = const [],
    required this.onInputChanged,
    super.key,
  });

  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem> {
  List<bool> _isCheckedList = [];
  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    _isCheckedList = List.filled(widget.options.length, false);
    _controllers = List.generate(widget.options.length, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.title != null)
          Text(
            widget.title!,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            widget.question,
            style: const TextStyle(fontSize: 30),
          ),
        ),
        const SizedBox(height: 16),
        ...List.generate(widget.options.length, (index) {
          final option = widget.options[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        option,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                    Checkbox(
                      value: _isCheckedList[index],
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isCheckedList[index] = newValue!;
                        });
                      },
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                    ),
                  ],
                ),
              ),
              if (_isCheckedList[index])
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: _controllers[index],
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Enter quantity (e.g., km or unit)',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      final numericValue = double.tryParse(value) ?? 0;
                      widget.onInputChanged(option, numericValue);
                    },
                  ),
                ),
            ],
          );
        }),
      ],
    );
  }
}
