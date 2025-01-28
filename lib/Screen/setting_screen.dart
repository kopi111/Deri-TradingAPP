import 'package:flutter/material.dart';
import 'package:deriveapp/class/20_days_challendes_levels.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final LevelData levelData = LevelData();
  late List<Map<String, dynamic>> levels;

  @override
  void initState() {
    super.initState();
    levels = levelData.levels;
  }

  // Method to toggle checkbox state
  void _togglePass(int index) {
    setState(() {
      if (levels[index]['passed']) {
        // Prevent unchecking if the next level is still checked
        if (index == levels.length - 1 || !levels[index + 1]['passed']) {
          levels[index]['passed'] = false;
        }
      } else {
        // Allow marking as passed only if the previous level is passed
        if (index == 0 || levels[index - 1]['passed']) {
          levels[index]['passed'] = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('30-Day Trading Challenge'),
      ),
      body: ListView.builder(
        itemCount: levels.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Day ${levels[index]['level']}:\n'
                      'Balance: \$${levels[index]['startingBalance']}\n'
                      'Risk: \$${levels[index]['risk']}\n'
                      'Profit Goal: \$${levels[index]['profitGoal']}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  Column(
                    children: [
                      const Text('Pass'),
                      Checkbox(
                        value: levels[index]['passed'],
                        onChanged: (bool? value) {
                          _togglePass(index);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
