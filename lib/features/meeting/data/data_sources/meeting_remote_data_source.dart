import 'package:meeting_app/features/meeting/domain/entities/meeting_entity.dart';

abstract class MeetingRemoteDataSource {
  Future<void> startMeeting(MeetingEntity meeting);
  Future<void> createMeeting(MeetingEntity meeting);
  Future<void> endMeeting(MeetingEntity meeting);
  Future<void> saveMeetingHistory(MeetingEntity meeting);
  Future<void> getMeetingChannelId(String id);
}
