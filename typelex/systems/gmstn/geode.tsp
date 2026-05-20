import "@typelex/emitter";

namespace systems.gmstn.geode {
	/** Record declaring a Gemstone Geode. */
	@rec("any")
	model Main {
		@required
		serviceEndpoint: uri;

		/** The timestamp when this channel was created. */
		@required
		createdAt: datetime;
	}
}
