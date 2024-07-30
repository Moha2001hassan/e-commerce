import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/settings/widgets/settings_menu_tile.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/routing/routes.dart';
import 'widgets/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              height: 205,
              child: Column(
                children: [
                  // AppBar
                  MyAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),
                    ),
                  ),

                  // User Profile Card
                  const UserProfileTile(),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                children: [
                  // Account Setting
                  const MySectionHeading(title: "Account Settings", showActionButton: false),
                  const SizedBox(height: 12),

                  // List Settings Tile
                  SettingsMenuTile(
                    icon: Iconsax.safe_home, title: "My Addresses",
                    supTitle: "Set shopping delivery address",
                    onTap: () => context.pushNamed(Routes.userAddressScreen),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    supTitle: "Set shopping delivery address",
                    onTap: () => context.pushNamed(Routes.cartScreen),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    supTitle: "Set shopping delivery address",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    supTitle: "Set shopping delivery address",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    supTitle: "Set shopping delivery address",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    supTitle: "Set shopping delivery address",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    supTitle: "Set shopping delivery address",
                    onTap: () {},
                  ),

                  // App Settings
                  const SizedBox(height: 20),
                  const MySectionHeading(title: "Account Settings", showActionButton: false),
                  const SizedBox(height: 12),
                  SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    supTitle: "Upload Data to your Cloud Firebase",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    supTitle: "Set recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    supTitle: "Search results is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    supTitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
