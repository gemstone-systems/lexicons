import "@typelex/emitter";
import "../../../../externals.tsp";

namespace systems.gmstn.api.chat.getGeodeWorkspaces {
	/** Gets the list of chat workspaces associated with a Geode. Does not require auth. */
	@query
	op main(
		/** Domain of the Geode in question, e.g. "geode.gmstn.systems" */
		@required host: string,
	): Workspaces;

	model Workspaces {
		@required
		count: integer;

		@required
		workspaces: Workspace[];
	}

	model Workspace {
		@required name: string;
		descriptionLong?: string;
		descriptionShort?: string;
		@required createdAt: datetime;
		@required isOwner: boolean;
		@required isAdmin: boolean;
		@required uri: atUri;
	}
}
