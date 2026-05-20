import "@typelex/emitter";

namespace systems.gmstn.chat.workspace {
	/* Record declaring a workspace.  */
	@rec("tid")
	model Main {
		/* The name of the workspace. */
		@required
		@minGraphemes(1)
		@maxGraphemes(100)
		@minLength(1)
		@maxLength(1000)
		name: string;

		/* (optional) Full description of the workspace. */
		@minGraphemes(1)
		@maxGraphemes(500)
		@minLength(1)
		@maxLength(5000)
		descriptionLong?: string;

		/* (optional) Shorter description of the workspace, likely shown on invites or other cards with limited space. */
		@minGraphemes(1)
		@maxGraphemes(200)
		@minLength(1)
		@maxLength(2000)
		descriptionShort?: string;
	}
}
