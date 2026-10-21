import 'package:flutter/material.dart';
import '../models/activites_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ma Garderie')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Center(
                child: Text('Ma Garderie',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.toys),
              title: const Text('Activités'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Section Activités')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('À propos'),
              onTap: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (_) => const AlertDialog(
                    title: Text('À propos'),
                    content: Text('Application Ma Garderie v1.0'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Nouvelle activité')),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: activites.length,
        itemBuilder: (context, index) {
          final a = activites[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              leading: Text(a.icone, style: const TextStyle(fontSize: 28)),
              title: Text(a.titre,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(a.description),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(a.titre)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}