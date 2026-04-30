import "@typelex/emitter";

namespace systems.gmstn.actor.profile {
	/** A declaration of a Gemstone account profile. */
	@rec("literal:self")
	model Main {
		@maxGraphemes(64)
		@maxLength(640)
		displayName?: string;

		/** Free-form profile description text. */
		@maxGraphemes(256)
		@maxLength(2560)
		bio?: string;

		/** Free-form pronouns text. */
		@maxGraphemes(20)
		@maxLength(200)
		pronouns?: string;

		website?: uri;

		/** Small image to be displayed next to posts from account. AKA, 'profile picture' */
		avatar?: Blob<#["image/png", "image/jpeg"], 1000000>;

		/** Larger horizontal image to display behind profile view. */
		banner?: Blob<#["image/png", "image/jpeg"], 1000000>;

		/** Self-label values, specific to the Gemstone application, on the overall account. */
		labels?: com.atproto.label.defs.SelfLabels | unknown;

		createdAt?: datetime;
	}
}

// --- Externals ---

@external
namespace com.atproto.label.defs {
	model SelfLabels {}
}
