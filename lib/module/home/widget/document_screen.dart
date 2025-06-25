import 'package:flutter/material.dart';
import '../../../core/res/app_colors.dart';
import '../../../core/res/app_fonts.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            documentItem(documentName: 'Offer Letter'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            documentItem(documentName: 'Appointment Letter'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            documentItem(documentName: 'Bond Agreement Letter'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            documentItem(documentName: 'Appraisal Letter'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            documentItem(documentName: 'Salary Slip'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
          ],
        ),
      ),
    );
  }

  Widget documentItem({
    required String documentName,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/icons/docs.png',
                  width: 24,
                  height: 24,
                  color: AppColors.colorBlack,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                documentName,
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: AppFonts.poppinsMedium,
                  color: AppColors.colorBlack,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/icons/file_download.png',
            width: 24,
            height: 24,
            color: AppColors.colorBlack,
          ),
        ],
      ),
    );
  }
}
