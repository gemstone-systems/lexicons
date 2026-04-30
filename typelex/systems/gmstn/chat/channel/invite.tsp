import "@typelex/emitter";
import "../../../../externals.tsp";

namespace systems.gmstn.chat.channel.invite {
	/** Record declaring a channel invite. */
	@rec("tid")
	model Main {
		/** The recipient of the invite. */
		@required
		recipient: did;

		/** The channel that this invite is for. Must resolve to a systems.gmstn.chat.channel record. */
		@required
		channel: com.atproto.repo.strongRef.Main;

		/** The timestamp when this invite was created. */
		@required
		createdAt: datetime;
	}
}

