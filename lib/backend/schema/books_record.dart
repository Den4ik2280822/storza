import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BooksRecord extends FirestoreRecord {
  BooksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "authorName" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "coverImageUrl" field.
  String? _coverImageUrl;
  String get coverImageUrl => _coverImageUrl ?? '';
  bool hasCoverImageUrl() => _coverImageUrl != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "textBook" field.
  String? _textBook;
  String get textBook => _textBook ?? '';
  bool hasTextBook() => _textBook != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _authorName = snapshotData['authorName'] as String?;
    _coverImageUrl = snapshotData['coverImageUrl'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _category = snapshotData['category'] as String?;
    _textBook = snapshotData['textBook'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('books');

  static Stream<BooksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BooksRecord.fromSnapshot(s));

  static Future<BooksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BooksRecord.fromSnapshot(s));

  static BooksRecord fromSnapshot(DocumentSnapshot snapshot) => BooksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BooksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BooksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BooksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BooksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBooksRecordData({
  String? title,
  String? authorName,
  String? coverImageUrl,
  String? shortDescription,
  String? createdBy,
  DateTime? createdAt,
  String? category,
  String? textBook,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'authorName': authorName,
      'coverImageUrl': coverImageUrl,
      'shortDescription': shortDescription,
      'createdBy': createdBy,
      'createdAt': createdAt,
      'category': category,
      'textBook': textBook,
    }.withoutNulls,
  );

  return firestoreData;
}

class BooksRecordDocumentEquality implements Equality<BooksRecord> {
  const BooksRecordDocumentEquality();

  @override
  bool equals(BooksRecord? e1, BooksRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.authorName == e2?.authorName &&
        e1?.coverImageUrl == e2?.coverImageUrl &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdAt == e2?.createdAt &&
        e1?.category == e2?.category &&
        e1?.textBook == e2?.textBook;
  }

  @override
  int hash(BooksRecord? e) => const ListEquality().hash([
        e?.title,
        e?.authorName,
        e?.coverImageUrl,
        e?.shortDescription,
        e?.createdBy,
        e?.createdAt,
        e?.category,
        e?.textBook
      ]);

  @override
  bool isValidKey(Object? o) => o is BooksRecord;
}
