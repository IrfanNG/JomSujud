import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/masjid_controller.dart';
import 'widgets/masjid_card.dart';

class MasjidListScreen extends StatelessWidget {
  const MasjidListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF121212,
      ), // Dark background for premium feel
      appBar: AppBar(
        title: const Text(
          'JomSujud',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF004D40), // Deep Teal
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              context.read<MasjidController>().init();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari masjid atau lokasi...',
                hintStyle: const TextStyle(color: Colors.white54),
                prefixIcon: const Icon(Icons.search, color: Colors.tealAccent),
                filled: true,
                fillColor: const Color(0xFF1E1E1E),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              ),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                context.read<MasjidController>().updateSearchQuery(value);
              },
            ),
          ),

          // List Content
          Expanded(
            child: Consumer<MasjidController>(
              builder: (context, controller, child) {
                if (controller.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(color: Colors.tealAccent),
                  );
                }

                if (controller.errorMessage != null &&
                    controller.masjids.isEmpty) {
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
                            'Ralat: ${controller.errorMessage}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white70),
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                            ),
                            onPressed: () => controller.init(),
                            child: const Text('Cuba Lagi'),
                          ),
                        ],
                      ),
                    ),
                  );
                }

                if (controller.masjids.isEmpty) {
                  return const Center(
                    child: Text(
                      'Tiada Masjid Ditemui',
                      style: TextStyle(color: Colors.white54),
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () => controller.init(),
                  color: Colors.tealAccent,
                  backgroundColor: Colors.grey[900],
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 0,
                    ),
                    itemCount: controller.masjids.length,
                    itemBuilder: (context, index) {
                      final masjid = controller.masjids[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: MasjidCard(masjid: masjid),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
