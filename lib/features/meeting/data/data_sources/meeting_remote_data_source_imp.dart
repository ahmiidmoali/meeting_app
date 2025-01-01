import 'package:meeting_app/features/app/const/app_link_const.dart';
import 'package:meeting_app/features/app/services/network_services.dart';
import 'package:meeting_app/features/meeting/data/data_sources/meeting_remote_data_source.dart';
import 'package:meeting_app/features/meeting/data/models/meeting_model.dart';
import 'package:meeting_app/features/meeting/domain/entities/meeting_entity.dart';
//  import 'package:uuid/uuid.dart';

class MeetingRemoteDataSourceImp extends MeetingRemoteDataSource {
  final NetworkServices networkServices;

  MeetingRemoteDataSourceImp({required this.networkServices});
  @override
  Future<RequestResult> createMeeting(MeetingEntity meeting) async {
    // String meetingId = Uuid().v1();
    final adminData = MeetingModel(
      meetingId: meeting.meetingId,
      adminId: meeting.adminId,
      adminName: meeting.adminName,
      adminProfileUrl: meeting.adminProfileUrl,
    ).toJson();

    try {
      return await networkServices.postCheckSuccess(
          link: AppLinkConst.createMeeting, body: adminData);
    } catch (e) {
      return RequestResult.failure;
    }
  }

  @override
  Future<RequestResult> startMeeting(MeetingEntity meeting) async {
    // String meetingId = Uuid().v1();
    final adminData = MeetingModel(
      meetingId: meeting.meetingId,
    ).toJson();

    try {
      return await networkServices.postCheckSuccess(
          link: AppLinkConst.startMeeting, body: adminData);
    } catch (e) {
      return RequestResult.failure;
    }
  }

  @override
  Future<void> endMeeting(MeetingEntity meeting) {
    // TODO: implement endMeeting
    throw UnimplementedError();
  }

  @override
  Future<void> getMeetingChannelId(String id) {
    // TODO: implement getMeetingChannelId
    throw UnimplementedError();
  }

  @override
  Future<void> saveMeetingHistory(MeetingEntity meeting) {
    // TODO: implement saveMeetingHistory
    throw UnimplementedError();
  }
}
