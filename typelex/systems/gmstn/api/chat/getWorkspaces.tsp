import "@typelex/emitter";
import "../../../../externals.tsp";

namespace systems.gmstn.api.chat.getWorkspaces {
	/** Gets the list of chat workspaces that a user belongs to. Does not require auth. */
	@query
	op main(
		/** Handle or DID of the account to fetch profile of. */
		@required identifier: atIdentifier,
	): {
		@required
		count: integer;

		@required
		workspaces: {
			@required name: string;
			descriptionLong?: string;
			descriptionShort?: string;
			@required createdAt: string;
			@required isOwner: boolean;
			@required isAdmin: boolean;
			@required uri: atUri;
		}[];
	};
}

