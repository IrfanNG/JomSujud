import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/masjid_controller.dart';
import 'widgets/masjid_card.dart';

class MasjidListScreen extends StatelessWidget {
  const MasjidListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'JomSujud',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Consumer<MasjidController>(
        builder: (context, controller, child) {
          if (controller.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.tealAccent),
            );
          }

          if (controller.errorMessage != null && controller.masjids.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Colors.redAccent,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Error: ${controller.errorMessage}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () => controller.init(),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          }

          if (controller.masjids.isEmpty) {
            return const Center(child: Text('No Mosques Found'));
          }

          return RefreshIndicator(
            onRefresh: () => controller.init(),
            color: Colors.tealAccent,
            backgroundColor: Colors.grey[800],
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: controller.masjids.length,
              itemBuilder: (context, index) {
                final masjid = controller.masjids[index];
                return MasjidCard(masjid: masjid);
              },
            ),
          );
        },
      ),
    );
  }
}
