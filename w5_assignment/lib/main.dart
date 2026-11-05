import 'package:flutter/material.dart';

// ============================================================================
// EXERCISE 1: Scaffold and Text
// ============================================================================
Widget exercise1() {
  return const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Text(
          'Hello my name is Ronan !',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 50,
          ),
        ),
      ),
    ),
  );
}

// ============================================================================
// EXERCISE 2: Nested Containers, Margin, Padding & BoxDecoration
// ============================================================================
Widget exercise2() {
  return MaterialApp(
    home: Container(
      color: Colors.blue[300],
      margin: const EdgeInsets.all(50),
      padding: const EdgeInsets.all(40),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text(
            'CADT STUDENTS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}

// ============================================================================
// EXERCISE 3: Column, Capsules & LinearGradient
// ============================================================================
Widget exercise3() {
  return MaterialApp(
    home: Container(
      padding: const EdgeInsets.all(30),
      color: Colors.grey[200],
      child: Column(
        children: [
          // 1. OOP Capsule
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
              child: Text(
                'OOP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          // 2. DART Capsule
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
              child: Text(
                'DART',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          // 3. FLUTTER Capsule (Linear Gradient Bonus)
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [
                  Colors.blue[300]!,
                  Colors.blue[600]!,
                ],
              ),
            ),
            child: const Center(
              child: Text(
                'FLUTTER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// ============================================================================
// EXERCISE 4: Proportional Layout (Column, Row, Expanded, SizedBox)
// ============================================================================
Widget exercise4() {
  return MaterialApp(
    home: Scaffold(
      body: Column(
        children: [
          // 1. Top white space: 100
          const SizedBox(height: 100),

          // 2. Blue block: height 400
          Container(
            height: 400,
            color: Colors.blue[700],
          ),

          // 3. Green (remaining) and Pink (100): height 100
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: Container(color: Colors.green),
                ),
                Container(
                  width: 100,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
          ),

          // 4. Three yellow boxes with 20px gaps: height 100
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.amber)),
                const SizedBox(width: 20),
                Expanded(child: Container(color: Colors.amber)),
                const SizedBox(width: 20),
                Expanded(child: Container(color: Colors.amber)),
              ],
            ),
          ),

          // 5. White space gap: 20
          const SizedBox(height: 20),

          // 6. Bottom Pink block: remaining height
          Expanded(
            child: Container(
              color: Colors.pinkAccent,
            ),
          ),
        ],
      ),
    ),
  );
}

// ============================================================================
// EXERCISE 5: The Welcome Page (Native Scaffold Slots)
// ============================================================================
Widget exercise5() {
  const themeColor = Color(0xFFD36846);

  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,

      // Top Bar Slot
      appBar: AppBar(
        backgroundColor: themeColor,
        centerTitle: true,
        title: const Text(
          'Welcome !',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Scrollable Middle Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            // "My hobbies" Black Banner
            Container(
              width: double.infinity,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Text(
                'My hobbies',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Two Side-by-Side Hobbies Cards
            Row(
              children: [
                // Soccer Card
                Expanded(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1A882),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Soccer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // Flutter Card
                Expanded(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBC511B),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Flutter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Bottom Bar Slot
      bottomNavigationBar: Container(
        height: 80,
        color: themeColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// ============================================================================
// MAIN ENTRY POINT
// ============================================================================
void main() {
  // Change the function call below to run any exercise (exercise1 to exercise5):
  runApp(exercise5());
}
