import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String assetPath;
  final String title;
  final String subtitle;
  final String rating;
  final VoidCallback? onTap;

  const FoodCard({
    super.key,
    required this.assetPath,
    required this.title,
    required this.subtitle,
    required this.rating,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170, // কার্ডের প্রস্থ
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25), // গোলগাল কোণা
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 15,
              offset: const Offset(0, 5), // হালকা শ্যাডো
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // বার্গার ইমেজ সেকশন
            Expanded(
              child: Center(
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            
            // টাইটেল (যেমন: Cheeseburger)
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            
            // সাবটাইটেল (যেমন: Wendy's Burger)
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12,
              ),
            ),
            
            const SizedBox(height: 12),
            
            // নিচের রেটিং এবং হার্ট আইকন রো
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Rating ----------------
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                // Favorite hart icon ----------------------------
                const Icon(
                  Icons.favorite_border,
                  color: Colors.black45,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
