import 'package:bareeq/core/widgets/bareeq_header.dart';
import 'package:flutter/material.dart';

class MainShellScreen extends StatefulWidget {
  const MainShellScreen({super.key});

  @override
  State<MainShellScreen> createState() => _MainShellScreenState();
}

class _MainShellScreenState extends State<MainShellScreen> {
  late List<Widget> tabs = [
    Center(child: Text('شاشة الرئيسية')),
    Center(child: Text('شاشة التصنيفات')),
    Center(child: Text('شاشة المنتجات')),
    Center(child: Text('شاشة طلباتي')),
    Center(child: Text('شاشة حسابي')),
  ];
  int _index = 0;

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
        onDestinationSelected: (newIndex) {
          setState(() {
            _index = newIndex;
          });
        },
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
