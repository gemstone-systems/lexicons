import "@typelex/emitter";
import "../../../../externals.tsp";

namespace systems.gmstn.chat.workspace.membership {
	/** Record declaring the state of a user's workspace membership. */
	@rec("tid")
	model Main {
		/** The workspace that the membership is describing. Must resolve to a systems.gmstn.workspace record on the workspace owner's or admin's repository. */
		@required
		workspace: atUri;

		/** The original invite record for the workspace. Must resolve to a systems.gmstn.chat.workspace.invite record on the workspace owner's or admin's repository. */
		@required
		invite: atUri;

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

