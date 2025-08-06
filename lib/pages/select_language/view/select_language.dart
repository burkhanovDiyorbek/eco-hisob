import 'package:flutter/material.dart';
import 'package:hisob_roject/app/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  final List<Map<String, dynamic>> languages = [
    {
      "name": "O'zbek tili",
      "locale": const Locale('uz', 'lat'),
      "image": "assets/images/flags/uz.png",
    },
    {
      "name": "English",
      "locale": const Locale('en'),
      "image": "assets/images/flags/en.png"
    },
    {
      "name": "Русский",
      "locale": const Locale('ru'),
      "image": "assets/images/flags/ru.png"
    },
    {
      "name": "Ўзбек тили",
      "locale": const Locale('uz'),
      "image": "assets/images/flags/uz.png",
    },
  ];

  // Language selection function. Changes app language and navigates back.
  void _changeLanguage(BuildContext context, Locale locale) async {
    await context.setLocale(locale);
    if (context.mounted) {
      context.go('/');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final mainColor = isDark ? AppTheme.darkBackgroundColor : AppTheme.mainColor;
    final mainTextColor = isDark
        ? AppTheme.darkMainTextColor
        : AppTheme.mainTextColor;
    final secondaryTextColor = isDark
        ? AppTheme.darkSecondaryTextColor
        : AppTheme.secondaryTextColor;
    final cardColor = isDark ? AppTheme.darkSurfaceColor : Colors.white;

    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 80),
            Center(
              child: Text(
                "Choose Language",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: mainTextColor,
                ),
              ),
            ),
            SizedBox(height: 40),
            // Til ro'yxati
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 24),
                itemCount: languages.length,
                separatorBuilder: (_, __) => SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final lang = languages[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => _changeLanguage(
                      context,
                      lang['locale'],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: mainTextColor.withOpacity(0.08),
                            blurRadius: 8,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 13,
                        horizontal: 17,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: secondaryTextColor.withOpacity(0.1),
                                width: 1,
                              ),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              lang['image'],
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Icon(Icons.flag, color: secondaryTextColor),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  lang['name'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: mainTextColor,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  '(${lang['locale'].languageCode})',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
