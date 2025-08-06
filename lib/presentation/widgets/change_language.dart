import 'package:flutter/material.dart';
import 'package:ltuc/core/themes/app_colors.dart';
import 'package:ltuc/core/translations/locale_provider.dart';
import 'package:ltuc/presentation/widgets/text/headline4.dart';
import 'package:ltuc/presentation/widgets/text/headline5.dart';
import 'package:provider/provider.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Headline4(title: 'Change Language'),
          const SizedBox(height: 16),
          ListTile(
            title: const Headline5(title: 'English'),
            leading: CircleAvatar(
              radius: 8,
              backgroundColor:
                  context.watch<LocaleProvider>().locale.languageCode == 'en'
                  ? AppColors.primary
                  : AppColors.grey,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.grey,
            ),
            onTap: () {
              Provider.of<LocaleProvider>(context, listen: false)
                    .setLocale(const Locale('en'));
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Headline5(title: 'العربية'),
            leading: CircleAvatar(
              radius: 8,
              backgroundColor:
                  context.watch<LocaleProvider>().locale.languageCode == 'ar'
                  ? AppColors.primary
                  : AppColors.grey,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.grey,
            ),
            onTap: () {
              Provider.of<LocaleProvider>(
                context,
                listen: false,
              ).setLocale(const Locale('ar'));

              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
