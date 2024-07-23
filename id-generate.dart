import 'package:uuid/uuid.dart';

// ... other imports

Future<void> recordRowData(Map<String, dynamic> data) async {
  final uuid = Uuid();
  final uniqueId = uuid.v4(); // This generates a version 4 UUID

  // Get a reference to your collection
  final collectionRef = FirebaseFirestore.instance.collection('yourCollectionName');

  // Add the data with the custom ID
  await collectionRef.doc(uniqueId).set(data);
}
