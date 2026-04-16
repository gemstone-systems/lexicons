import "@typelex/emitter";

namespace systems.gmstn.chat.channel {
  @rec("tid")
  /** Record declaring a conversation channel. */
  model Main {
    /** The name of the channel. */
    @minGraphemes(1)
    @maxGraphemes(100)
    @minLength(1)
    @maxLength(1000)
    @required
    name: string;

    /** (optional) The topic of the channel, similar to a sub-description. */
    @minGraphemes(1)
    @maxGraphemes(200)
    @minLength(1)
    @maxLength(2000)
    topic?: string;

    /** The timestamp when this channel was created. */
    @required
    createdAt: datetime;
  }
}
