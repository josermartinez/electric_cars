import 'package:flutter/material.dart';

class ElectricCarTile extends StatelessWidget {
  ElectricCarTile({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.carName,
    required this.carMaker,
    required this.onTap,
  });

  final String id;
  final String imageUrl;
  final String carName;
  final String carMaker;
  void Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(id);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network(
                  imageUrl,
                  height: 50,
                  width: 100,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    carName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    carMaker,
                    textAlign: TextAlign.start,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
