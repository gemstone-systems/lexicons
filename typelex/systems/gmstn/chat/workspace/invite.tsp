import "@typelex/emitter";

namespace systems.gmstn.chat.workspace.invite {
	/** Record declaring a workspace invite. */
	@rec("tid")
	model Main {
		/** The recipient of the invite. */
		@required
		recipient: did;

		/** The workspace that this invite is for. Must resolve to a systems.gmstn.workspace record. */
		@required
		workspace: atUri;

		/** The timestamp when this invite was created. */
		@required
		createdAt: datetime;
	}
}
