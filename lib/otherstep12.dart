import 'package:flutter/material.dart';

class OtherStep12 extends StatefulWidget {
  const OtherStep12({super.key});

  @override
  State<OtherStep12> createState() => _OtherStep12State();
}

class _OtherStep12State extends State<OtherStep12> {
  bool lampOn = false;
  bool notifOn = false;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        title: const Text("Toggle"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Toggle State Examples",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          _card(
            child: ListTile(
              title: const Text(
                "Lamp/Lights",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                lampOn ? "Lamp Turned On 💡" : "Lamp Turned Off 🔌",
                style: TextStyle(
                  color: lampOn ? Colors.orange : Colors.grey,
                ),
              ),
              trailing: Switch(
                value: lampOn,
                onChanged: (v) => setState(() => lampOn = v),
              ),
            ),
          ),

          _card(
            child: ListTile(
              title: const Text(
                "Notification",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                notifOn
                    ? "Activate Notification 🔔"
                    : "Deactivate Notification 🚫",
                style: TextStyle(
                  color: notifOn ? Colors.green : Colors.grey,
                ),
              ),
              trailing: Switch(
                value: notifOn,
                onChanged: (v) => setState(() => notifOn = v),
              ),
            ),
          ),

          _card(
            child: CheckboxListTile(
              value: darkMode,
              onChanged: (v) => setState(() => darkMode = v!),
              title: const Text(
                "Dark Mode",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                darkMode ? "Night Mode 🌙" : "Light Mode ☀️",
                style: TextStyle(
                  color: darkMode ? Colors.purple : Colors.orange,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Toggle with Button:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          ElevatedButton.icon(
            onPressed: () => setState(() => lampOn = !lampOn),
            icon: const Icon(Icons.lightbulb),
            label: Text(lampOn ? "Lamp Off" : "Lamp On"),
            style: ElevatedButton.styleFrom(
              backgroundColor: lampOn ? Colors.red : Colors.grey,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _card({required Widget child}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
