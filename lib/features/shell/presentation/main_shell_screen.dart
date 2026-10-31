import 'package:bareeq/core/widgets/bareeq_header.dart';
import 'package:bareeq/features/category/category_screen.dart';
import 'package:bareeq/features/home/home_screen.dart';
import 'package:bareeq/features/orders/presentation/orders_screen.dart';
import 'package:bareeq/features/products/products_screen.dart';
import 'package:bareeq/features/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class MainShellScreen extends StatefulWidget {
  const MainShellScreen({super.key});

  @override
  State<MainShellScreen> createState() => _MainShellScreenState();
}

class _MainShellScreenState extends State<MainShellScreen> {
  late List<Widget> tabs = [
    HomeScreen(onOpentab: _openTab),
    const CategoryScreen(),
    const ProductsScreen(),
    const OrdersScreen(),
    const SettingsScreen(),
  ];

  int _index = 0;

  void _openTab(int i) => setState(() => _index = i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BareeqHeader(),
      body: IndexedStack(
        alignment: AlignmentGeometry.center,
        index: _index,
        children: tabs,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: _openTab,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'الرئيسية'),
          NavigationDestination(icon: Icon(Icons.category), label: 'التصنيفات'),
          NavigationDestination(icon: Icon(Icons.grid_view), label: 'المنتجات'),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag),
            label: 'طلباتي',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'حسابي'),
        ],
      ),
    );
  }
}
