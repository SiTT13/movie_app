// lib/widgets/custom_wrap.dart
import 'package:flutter/material.dart';

class CustomWrap extends StatelessWidget {
  final List<String> imageUrls;

  const CustomWrap({Key? key, required this.imageUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 10.0,  // Horizontal space between images
        runSpacing: 10.0,  // Vertical space between images
        children: List.generate(
          imageUrls.length,
          (index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrls[index],  // Network Image URL
                fit: BoxFit.cover,
                width: 150,  // Set a specific width for the images
                height: 200,  // Set a specific height for the images
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                (loadingProgress.expectedTotalBytes ?? 1)
                            : null,
                      ),
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
