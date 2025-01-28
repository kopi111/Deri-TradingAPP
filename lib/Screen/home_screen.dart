import 'package:deriveapp/Screen/challenge_screen.dart';
import 'package:deriveapp/Screen/setting_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Track the currently selected index

  // List of screens for navigation
  final List<Widget> _screens = [
    SortablePage(), // Correct reference to ChallengeScreen
    const Setting(), // Example third screen
  ];

  // Handle BottomNavigationBar taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the selected screen
      body: _screens[_selectedIndex], // Dynamically render selected screen
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '20 Pip Challenges',
          ),
        ],
        currentIndex: _selectedIndex, // Highlight the selected item
        onTap: _onItemTapped, // Pass the index to _onItemTapped
      ),
    );
  }
}
