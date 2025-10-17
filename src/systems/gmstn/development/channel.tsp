import "@typelex/emitter";

namespace systems.gmstn.development.channel {
  @rec("tid")
	/** Record declaring a conversation channel. */
  model Main {
    /** The name of the channel. */
    @minGraphemes(1)
    @maxGraphemes(100)
    @minLength(1)
    @maxLength(1000)
    @required
    name: string;

    /** The location to store the messages in this channel. Must resolve to a Shard or compatible message store. */
    @required
    storeAt: com.atproto.repo.strongRef.Main;

    /** The service to route the messages in this channel through. Must resolve to a Lattice or compatible sync service. */
    @required
    routeThrough: com.atproto.repo.strongRef.Main;

    /** (optional) The topic of the channel, similar to a sub-description. */
    @minGraphemes(1)
    @maxGraphemes(200)
    @minLength(1)
    @maxLength(2000)
    topic?: string;

    /** The timestamp when this channel was created. */
    @required
    createdAt: datetime;
  }
}

// --- Externals ---

@external
namespace com.atproto.repo.strongRef {
  model Main {}
}

