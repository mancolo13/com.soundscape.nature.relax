import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Saved Mixes'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.favorite, color: Colors.redAccent),
              title: const Text('My Night Chill'),
              subtitle: const Text('Rain 60% • Wind 40% • Brown Noise 20%'),
              trailing: const Icon(Icons.play_arrow_rounded, color: AppTheme.primary),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const Icon(Icons.favorite, color: Colors.redAccent),
              title: const Text('Reading at Cafe'),
              subtitle: const Text('Coffee Ambience 70% • Soft Rain 30%'),
              trailing: const Icon(Icons.play_arrow_rounded, color: AppTheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}
