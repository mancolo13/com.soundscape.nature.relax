import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class MixerTab extends StatefulWidget {
  const MixerTab({super.key});

  @override
  State<MixerTab> createState() => _MixerTabState();
}

class _MixerTabState extends State<MixerTab> {
  final Map<String, double> _channels = {
    "Forest Rain": 0.6,
    "Campfire": 0.4,
    "Wind in Trees": 0.5,
    "River Stream": 0.2,
    "Thunderstorm": 0.3,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SoundScape Nature Mixer'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: _channels.keys.map((c) {
          final val = _channels[c]!;
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(c, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('${(val * 100).round()}%', style: const TextStyle(color: AppTheme.primary)),
                    ],
                  ),
                  Slider(
                    value: val,
                    activeColor: AppTheme.primary,
                    onChanged: (v) => setState(() => _channels[c] = v),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
