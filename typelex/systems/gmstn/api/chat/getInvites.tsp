import "@typelex/emitter";
import "../../../../externals.tsp";

namespace systems.gmstn.api.chat.getInvites {
	/** Requires auth. Gets the list of all possible workspace invites that reference the authed user's DID. */
	@query
	op main(): WorkspaceInvite[];

	model WorkspaceInvite {
		@required name: string;
		descriptionLong?: string;
		descriptionShort?: string;
		@required uri: atUri;
		@required createdAt: datetime;
	}
}

