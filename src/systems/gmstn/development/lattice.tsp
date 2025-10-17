import "@typelex/emitter";

namespace systems.gmstn.development.lattice {
  @rec("any")
	/** Record defining a Lattice, a real-time sync engine. The record-key should be the domain where the Shard is accessible. */
  model Main {
    /** Timestamp when this Lattice was registered */
    @required createdAt: datetime;

    /** (optional) Human-readable description of this Lattice. Does nothing for now. */
    @maxGraphemes(200)
    @maxLength(2000)
    description?: string;
  }
}
