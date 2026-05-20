import "@typelex/emitter";
import "../../../../externals.tsp";

namespace systems.gmstn.api.actor.getProfile {
	/** Get detailed profile view of an actor. Does not require auth, but contains more information if the requester is authenticated. */
	@query
	op main(
		/** Handle or DID of the account to fetch profile of. */
		@required actor: atIdentifier,
	): ProfileView;

	model ProfileView {
		@required did: did;
		@required handle: handle;

		@maxGraphemes(64)
		@maxLength(640)
		displayName?: string;

		@maxGraphemes(256)
		@maxLength(2560)
		bio?: string;

		@maxGraphemes(20)
		@maxLength(200)
		pronouns?: string;

		website?: uri;

		/** URL of the avatar image. */
		avatar?: uri;

		/** URL of the banner image. */
		banner?: uri;

		labels?: com.atproto.label.defs.Label[];
		createdAt?: datetime;

		/** Timestamp of when Prism indexed this profile. */
		indexedAt?: datetime;
	}
}
