import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservationsRecord extends FirestoreRecord {
  ReservationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "courtID" field.
  DocumentReference? _courtID;
  DocumentReference? get courtID => _courtID;
  bool hasCourtID() => _courtID != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "refereeRequested" field.
  bool? _refereeRequested;
  bool get refereeRequested => _refereeRequested ?? false;
  bool hasRefereeRequested() => _refereeRequested != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _courtID = snapshotData['courtID'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _duration = castToType<int>(snapshotData['duration']);
    _refereeRequested = snapshotData['refereeRequested'] as bool?;
    _status = snapshotData['status'] as String?;
    _userID = snapshotData['userID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reservations');

  static Stream<ReservationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationsRecord.fromSnapshot(s));

  static Future<ReservationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationsRecord.fromSnapshot(s));

  static ReservationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationsRecordData({
  DocumentReference? courtID,
  DateTime? date,
  int? duration,
  bool? refereeRequested,
  String? status,
  DocumentReference? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courtID': courtID,
      'date': date,
      'duration': duration,
      'refereeRequested': refereeRequested,
      'status': status,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationsRecordDocumentEquality
    implements Equality<ReservationsRecord> {
  const ReservationsRecordDocumentEquality();

  @override
  bool equals(ReservationsRecord? e1, ReservationsRecord? e2) {
    return e1?.courtID == e2?.courtID &&
        e1?.date == e2?.date &&
        e1?.duration == e2?.duration &&
        e1?.refereeRequested == e2?.refereeRequested &&
        e1?.status == e2?.status &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(ReservationsRecord? e) => const ListEquality().hash([
        e?.courtID,
        e?.date,
        e?.duration,
        e?.refereeRequested,
        e?.status,
        e?.userID
      ]);

  @override
  bool isValidKey(Object? o) => o is ReservationsRecord;
}
