import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class AiHelperWidget extends StatefulWidget {
  const AiHelperWidget({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  State<AiHelperWidget> createState() => _AiHelperWidgetState();
}

class _AiHelperWidgetState extends State<AiHelperWidget> {
  bool isOpen = false;

  List<TextSpan> _formatText(String text) {
    List<TextSpan> spans = [];

    text.replaceAll('Здравствуйте!', '').replaceAll('Ответ:', '').trim().trim().split(r'\n').forEach((line) {
      if (line.contains('**')) {
        spans.add(TextSpan(
            text: '${line.replaceAll('**', '').replaceAll('*', '•')}\n',
            style: const TextStyle(fontWeight: FontWeight.bold)));
      } else {
        spans
            .add(TextSpan(text: "$line\n".replaceAll('*', '•'), style: const TextStyle(fontWeight: FontWeight.normal)));
      }
    });

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: AppColors.mainColorDarkest,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        PlateWidget(
          color: AppColors.mainColorDark,
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                    child: Icon(
                      Icons.reddit,
                      color: Colors.white,
                    ),
                  ),
                  AutoSizeText(
                    "Нейро-помощник",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: _formatText(widget.text.substring(1, widget.text.length - 1)),
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                maxLines: isOpen ? null : 4,
              ),
              const Divider(color: AppColors.mainColor),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: const Text(
                      'Задать вопрос',
                      style: TextStyle(
                        color: AppColors.mainColorDark,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      isOpen = !isOpen;
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox.square(
                          dimension: 18,
                          child: Icon(
                            isOpen ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
