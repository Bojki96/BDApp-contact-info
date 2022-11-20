import 'package:flutter/material.dart';
import 'package:flutter_template/entities/contact_info.dart';
import 'package:flutter_template/gen/assets.gen.dart';
import 'package:flutter_template/theme.dart';
import 'package:flutter_template/typography.dart';
import 'package:flutter_template/ui_components/company_app.dart';
import 'package:flutter_template/utils/launch.dart';

const ContactInfo contactInfo = ContactInfo(
  companyName: 'BD App',
  person: 'Dorian Bojić',
  email: 'bdappdevelopment@gmail.com',
  city: 'Rijeka',
  country: 'Croatia',
);

class ContactInfoScreen extends StatelessWidget {
  const ContactInfoScreen({Key? key}) : super(key: key);

  _buildMainInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextType.h0(
          contactInfo.companyName,
          padding: const EdgeInsets.only(bottom: 4),
        ),
        TextType.p1(
          contactInfo.person,
          padding: const EdgeInsets.only(bottom: 4),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () => Launch.mail(contactInfo.email),
              icon: const Icon(Icons.mail),
            ),
            const SizedBox(width: 8),
            TextType.p1(
              contactInfo.email,
            ),
            const SizedBox(height: 24),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () => Launch.url(
                'https://www.google.com/maps/place/Rijeka/@45.3242001,14.3746289,12z/data=!4m6!3m5!1s0x4764a12517aabe2d:0x373c6f383dcbb670!8m2!3d45.3270631!4d14.442176!16zL20vMDFyM3M1',
              ),
              icon: const Icon(Icons.location_on_sharp),
            ),
            const SizedBox(width: 8),
            TextType.p1(
              '${contactInfo.city}, ${contactInfo.country}',
            ),
            const SizedBox(height: 24),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: ThemeColors.backgroundGrayNew,
        centerTitle: false,
        title: Row(
          children: [
            const Icon(
              Icons.info_outline,
              color: ThemeColors.darkGray,
            ),
            const SizedBox(width: 8),
            TextType.p1(
              'BD App contact info',
              color: ThemeColors.darkGray,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              _buildMainInfo(),
              const SizedBox(height: 32),
              AppInfo(
                title: 'Pričalice-RI',
                content:
                    'Digital calendar solution for Aunt Storytellers from Rijeka. Aunts and Uncles Storytellers are one of those everyday heroes who make the world better by telling goodnight stories to children who are unfortunately in the hospital. To help them with time management and organisation, a mobile application has been created that makes it easier for them to organize appointments for telling stories.',
                image: Assets.images.pricalice.image(
                  fit: BoxFit.cover,
                ),
              ),

              // CompanyApp(
              //   child1: const AppInfo(
              //       title: 'zZzleep',
              //       content:
              //           'Simple sleep diary for tracking your sleep every day, calculating the amount of sleep, and optionalyy record some thoughts, dreams, notes, etc.'),
              //   child2: Assets.images.zzzleep.image(fit: BoxFit.cover),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
