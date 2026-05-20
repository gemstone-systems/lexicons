import "@typelex/emitter";

namespace systems.gmstn.chat.workspace.admin {
	/* Record declaring a workspace administrator. Workspace owners will always be an administrator for that workspace, but declaring additional admins is done through creating a record like this. */
	@rec("tid")
	model Main {
		@required
		subject: did;

		@required
		createdAt: datetime;
	}
}
