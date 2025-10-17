import "@typelex/emitter";

namespace systems.gmstn.development.shard {
  @rec("any")
	/** Record defining a Shard, a message store. The record-key should be the domain where the Shard is accessible. */
  model Main {
    /** Timestamp when this Shard was registered */
    @required createdAt: datetime;

    /** (optional) Human-readable description of this Shard. Does nothing for now. */
    @maxGraphemes(200)
    @maxLength(2000)
    description?: string;
  }
}
