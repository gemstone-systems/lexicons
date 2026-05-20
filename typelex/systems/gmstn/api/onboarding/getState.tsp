import "@typelex/emitter";

namespace systems.gmstn.api.onboarding.getState {
	/** Gets the relevant onboarding information for the requesting DID. Requires auth. */
	@query
	op main(): {
		updatedAt?: datetime;
		chat?: {
			@required
			onboardedAt: datetime;
		};
		projects?: {
			@required
			onboardedAt: datetime;
		};
		knowledge?: {
			@required
			onboardedAt: datetime;
		};
	};
}

