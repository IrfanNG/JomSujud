import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/masjid_controller.dart';
import 'ui/masjid_list_screen.dart';

void main() {
  runApp(const JomSujudApp());
}

class JomSujudApp extends StatelessWidget {
  const JomSujudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MasjidController()..init()),
      ],
      child: MaterialApp(
        title: 'JomSujud',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(
            0xFF121212,
          ), // Deep dark background
          colorScheme: const ColorScheme.dark(
            primary: Colors.teal,
            secondary: Colors.tealAccent,
            surface: Color(0xFF1E1E1E),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF121212),
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
          useMaterial3: true,
        ),
        home: const MasjidListScreen(),
      ),
    );
  }
}
