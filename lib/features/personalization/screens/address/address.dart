import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:e_commerce/utils/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'widgets/single_address.dart';

class UserAddressScreen extends StatefulWidget {
  const UserAddressScreen({super.key});

  @override
  State<UserAddressScreen> createState() => _UserAddressScreenState();
}

class _UserAddressScreenState extends State<UserAddressScreen> {
  int? _selectedAddressIndex = 0;

  void _onAddressTapped(int index) {
    setState(() {
      _selectedAddressIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed(Routes.addNewAddressScreen),
        child: const Icon(Iconsax.add, color: Colors.white),
      ),
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Address', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: List.generate(5, (index){
              return MySingleAddress(
                selectedAddress: _selectedAddressIndex == index,
                onTap: () => _onAddressTapped(index),
                index: index,
                address: "132 Main Street, El-Mahala El-Kobra, El-Gharbia, Egypt",
              );
            }),
          ),
        )
      ),
    );
  }
}
