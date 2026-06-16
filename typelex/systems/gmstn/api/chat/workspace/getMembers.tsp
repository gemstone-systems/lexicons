import "@typelex/emitter";
import "../../../../../externals.tsp";
import "../../platform/actor/getProfile.tsp";

namespace systems.gmstn.api.chat.workspace.getMembers {
	/** Requires auth. Given an array of workspace AT-uris, returns an array of objects containing the profiles associated with that workspace. */
	@query
	op main(
		/** Array of workspace AT-uris. */
		@required
		@maxItems(20)
		identifier: atUri[],

		/** Optional cursor for pagination. */
		cursor?: string,
	): Workspaces;

	model Workspaces {
		@required workspacesCount: integer;
		@required workspaces: WorkspaceWithMembers[];
		cursor?: string;
	}

	model WorkspaceWithMembers {
		@required workspace: atUri;
		@required
		members: systems.gmstn.api.platform.actor.getProfile.ProfileView[];
	}
}
