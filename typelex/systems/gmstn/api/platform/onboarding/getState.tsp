import "@typelex/emitter";

namespace systems.gmstn.api.onboarding.getState {
	/** Gets the relevant onboarding information for the requesting DID. Requires auth. */
	@query
	op main(): OnboardingState;

	model OnboardingState {
		updatedAt?: datetime;
		chat?: OnboardingStateObject;
		projects?: OnboardingStateObject;
		knowledge?: OnboardingStateObject;
	}

	model OnboardingStateObject {
			@required
			onboardedAt: datetime;
		}
}
