import "@typelex/emitter";

namespace systems.gmstn.development.channel.invite {
  @rec("tid")
  /** Record declaring a channel invite. */
  model Main {
    /** The recipient of the invite. */
    @required
    recipient: did;

    /** The channel that this invite is for. Must resolve to a systems.gmstn.development.channel record. */
    @required
    channel: com.atproto.repo.strongRef.Main;

    /** The timestamp when this invite was created. */
    @required
    createdAt: datetime;
  }
}

// --- Externals ---

@external
namespace com.atproto.repo.strongRef {
  model Main {}
}
