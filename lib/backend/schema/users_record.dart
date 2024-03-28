import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "dob" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  bool hasFullname() => _fullname != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "phonenum" field.
  String? _phonenum;
  String get phonenum => _phonenum ?? '';
  bool hasPhonenum() => _phonenum != null;

  void _initializeFields() {
    _dob = snapshotData['dob'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _fullname = snapshotData['fullname'] as String?;
    _password = snapshotData['password'] as String?;
    _phonenum = snapshotData['phonenum'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  DateTime? dob,
  String? email,
  String? fullname,
  String? password,
  String? phonenum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dob': dob,
      'email': email,
      'fullname': fullname,
      'password': password,
      'phonenum': phonenum,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.dob == e2?.dob &&
        e1?.email == e2?.email &&
        e1?.fullname == e2?.fullname &&
        e1?.password == e2?.password &&
        e1?.phonenum == e2?.phonenum;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality()
      .hash([e?.dob, e?.email, e?.fullname, e?.password, e?.phonenum]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
