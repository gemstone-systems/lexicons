import "@typelex/emitter";
import "../../../../externals.tsp";

namespace systems.gmstn.chat.channel.membership {
	/** Record declaring the state of a user's channel membership. */
	@rec("tid")
	model Main {
		/** The channel that the membership is describing. Must resolve to a systems.gmstn.chat.channel record on the channel owner's repository. */
		@required
		channel: com.atproto.repo.strongRef.Main;

		/** The original invite record for the channel. Must resolve to a systems.gmstn.chat.channel.invite record on the channel owner's repository. */
		@required
		invite: com.atproto.repo.strongRef.Main;

		/** The current membership state. */
		@required
		state: MembershipState;

		/** The timestamp when this membership was created. */
		@required
		createdAt: datetime;

		/** The timestamp when this membership was last updated. */
		@required
		updatedAt: datetime;
	}

	@closed
	@inline
	union MembershipState {
		"accepted",
		"rejected",
		"left",
	}
}

