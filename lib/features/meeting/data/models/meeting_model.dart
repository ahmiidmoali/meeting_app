import 'package:meeting_app/features/meeting/domain/entities/meeting_entity.dart';

class MeetingModel extends MeetingEntity {
  final String? meetingId;
  final String? adminId;
  final String? adminName;
  final String? adminProfileUrl;

  final String? memberId;
  final String? memberName;
  final String? memberProfileUrl;
  final bool? isMeetingStarted;
  final String? createdAt;
  final String? endedAt;

  MeetingModel(
      {this.meetingId,
      this.adminId,
      this.adminName,
      this.adminProfileUrl,
      this.memberId,
      this.memberName,
      this.memberProfileUrl,
      this.isMeetingStarted,
      this.createdAt,
      this.endedAt})
      : super(meetingId, adminId, adminName, adminProfileUrl, memberId,
            memberName, memberProfileUrl, isMeetingStarted, createdAt, endedAt);
  factory MeetingModel.fromJson(Map<String, dynamic> json) {
    return MeetingModel(
        meetingId: json["meetingId"],
        adminId: json["adminId"],
        adminName: json["adminName"],
        adminProfileUrl: json["adminProfileUrl"],
        memberId: json["memberId"],
        memberName: json["memberName"],
        memberProfileUrl: json["memberProfileUrl"],
        isMeetingStarted: json["isMeetingStarted"],
        createdAt: json["createdAt"],
        endedAt: json["endedAt"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    return data;
  }
}
