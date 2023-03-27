import '../models/call_cid.dart';
import '../models/call_device.dart';
import '../models/call_metadata.dart';
import '../models/call_reaction.dart';
import '../models/call_received_created.dart';
import '../models/queried_calls.dart';
import '../models/queried_members.dart';
import '../models/user_info.dart';
import '../shared_emitter.dart';
import '../utils/none.dart';
import '../utils/result.dart';
import 'models/coordinator_events.dart';
import 'models/coordinator_inputs.dart' as inputs;
import 'models/coordinator_models.dart' as models;

abstract class CoordinatorClient {
  SharedEmitter<CoordinatorEvent> get events;

  Future<Result<None>> onUserLogin(UserInfo user);

  Future<Result<None>> onUserLogout();

  Future<Result<CallDevice>> createDevice(
    inputs.CreateDeviceInput input,
  );

  Future<Result<None>> deleteDevice(inputs.DeleteDeviceInput input);

  Future<Result<CallReceivedOrCreated>> getOrCreateCall(
    inputs.GetOrCreateCallInput input,
  );

  Future<Result<models.CoordinatorJoined>> joinCall(inputs.JoinCallInput input);

  Future<Result<models.SfuServerSelected>> findBestCallEdgeServer({
    required StreamCallCid callCid,
    required List<models.SfuEdge> edges,
  });

  Future<Result<models.SfuServerSelected>> selectCallEdgeServer({
    required StreamCallCid callCid,
    required Map<String, models.SfuLatency> latencyByEdge,
  });

  Future<Result<None>> sendUserEvent(
    inputs.EventInput input,
  );

  Future<Result<None>> sendCustomEvent(
    inputs.CustomEventInput input,
  );

  Future<Result<None>> inviteUsers(inputs.UpsertCallMembersInput input);

  Future<Result<None>> requestPermissions(inputs.RequestPermissionsInput input);

  Future<Result<None>> updateUserPermissions(
    inputs.UpdateUserPermissionsInput input,
  );

  Future<Result<None>> startRecording(StreamCallCid callCid);

  Future<Result<None>> stopRecording(StreamCallCid callCid);

  Future<Result<None>> startBroadcasting(StreamCallCid callCid);

  Future<Result<None>> stopBroadcasting(StreamCallCid callCid);

  Future<Result<CallReaction>> sendReaction(inputs.ReactionInput input);

  Future<Result<QueriedMembers>> queryMembers(inputs.QueryUsersInput input);

  Future<Result<QueriedCalls>> queryCalls(inputs.QueryCallsInput input);

  Future<Result<None>> blockUser(inputs.BlockUserInput input);

  Future<Result<None>> unblockUser(inputs.UnblockUserInput input);

  Future<Result<None>> endCall(StreamCallCid callCid);

  Future<Result<CallMetadata>> goLive(StreamCallCid callCid);

  Future<Result<CallMetadata>> stopLive(StreamCallCid callCid);

  Future<Result<None>> muteUsers(inputs.MuteUsersInput input);

  Future<Result<CallMetadata>> updateCall(inputs.UpdateCallInput input);
}