import "@typelex/emitter";

namespace systems.gmstn.development.channel.membership {
  @rec("tid")
  /** Record declaring the state of a user's channel membership. */
  model Main {
    /** The channel that the membership is describing. Must resolve to a systems.gmstn.development.channel record on the channel owner's repository. */
    @required
    channel: com.atproto.repo.strongRef.Main;

    /** The original invite record for the channel. Must resolve to a systems.gmstn.development.channel.invite record on the channel owner's repository. */
    @required
    invite: com.atproto.repo.strongRef.Main;

    /** The current membership state */
    @required
    state: InvitationState;

    /** The timestamp when this membership was created. */
    @required
    createdAt: datetime;

    /** The timestamp when this membership was last updated. */
    @required
    updatedAt: datetime;
  }

  @closed
  @inline
  union InvitationState { "accepted", "rejected", "left" };
}

// --- Externals ---

@external
namespace com.atproto.repo.strongRef {
  model Main {}
}
