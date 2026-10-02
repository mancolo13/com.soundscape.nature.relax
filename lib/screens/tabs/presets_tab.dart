import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class PresetsTab extends StatelessWidget {
  const PresetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final presets = [
      {'name': 'Thunderstorm Sanctuary', 'desc': 'Heavy rain, distant thunder, roof drops', 'icon': Icons.thunderstorm_rounded},
      {'name': 'Deep Woodland Camp', 'desc': 'Night crickets, crackling campfire, soft wind', 'icon': Icons.forest_rounded},
      {'name': 'Cosmic Deep Sleep', 'desc': 'Binaural delta waves, brown noise', 'icon': Icons.nightlight_round},
      {'name': 'Nordic Stream', 'desc': 'Flowing glacial river, morning birds', 'icon': Icons.water_rounded},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Curated Soundscapes'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: presets.length,
        itemBuilder: (ctx, i) {
          final p = presets[i];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(p['icon'] as IconData, size: 36, color: AppTheme.primary),
              title: Text(p['name'] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(p['desc'] as String),
              trailing: IconButton(
                icon: const Icon(Icons.play_circle_filled_rounded, color: AppTheme.primary, size: 36),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Playing ${p['name']}')));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
