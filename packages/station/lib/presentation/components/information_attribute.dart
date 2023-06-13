import 'package:flutter/cupertino.dart';

class InformationAttribute extends StatelessWidget {
  final String attributeName;
  final Widget attributeValue;

  const InformationAttribute({
    super.key,
    required this.attributeName,
    required this.attributeValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(attributeName),
        ),
        Expanded(
          flex: 6,
          child: attributeValue,
        ),
      ],
    );
  }
}
