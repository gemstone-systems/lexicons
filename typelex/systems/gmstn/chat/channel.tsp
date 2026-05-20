import "@typelex/emitter";
import "../../../externals.tsp";

namespace systems.gmstn.chat.channel {
	/** Record declaring a conversation channel. */
	@rec("tid")
	model Main {
		/** The name of the channel. While it can be any string, it is likely to be converted to kebab-case where necessary, particularly in client applications. */
		@minGraphemes(1)
		@maxGraphemes(100)
		@minLength(1)
		@maxLength(1000)
		@required
		name: string;

		/* URI of the workspace that this channel belongs to. */
		@required
		workspace: atUri;

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
