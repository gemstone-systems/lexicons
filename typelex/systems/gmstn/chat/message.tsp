import "@typelex/emitter";
import "../../../externals.tsp";
import "../../gmstn/richtext/facet.tsp";

namespace systems.gmstn.chat.message {
  @rec("tid")
  /** Record declaring a chat message. Written to the sender's repository by the AppView. */
  model Main {
    /** The channel this message was sent to. Must resolve to a systems.gmstn.chat.channel record. */
    @required
    channel: com.atproto.repo.strongRef.Main;

    /** (optional) A reference to the message this is replying to. */
    replyRef?: ReplyRef;

    /** (optional) A reference to another message, such as a quoted or forwarded message. */
    messageRef?: MessageRef;

    /** The text content of the message. */
    @minGraphemes(1)
    @maxGraphemes(5000)
    @minLength(1)
    @maxLength(50000)
    @required
    content: string;

    /** (optional) Rich text annotations for the message content. Annotations are indexed by UTF-8 byte offsets into the content string. */
    facets?: systems.gmstn.richtext.facet.Main[];

    /** (optional) Attached media files. */
    @maxItems(10)
    attachments?: Blob<#["image/png", "image/jpeg", "image/gif", "video/mp4", "audio/mpeg"], 10000000>[];

    /** The timestamp when this message was created. */
    @required
    createdAt: datetime;
  }

  /** A reply reference linking to the root and parent messages of a thread. */
  model ReplyRef {
    /** The root message of the thread. Must resolve to a systems.gmstn.chat.message record. */
    @required
    root: com.atproto.repo.strongRef.Main;

    /** The direct parent message being replied to. Must resolve to a systems.gmstn.chat.message record. */
    @required
    parent: com.atproto.repo.strongRef.Main;
  }

  /** A reference to another message. */
  model MessageRef {
    /** The referenced message. Must resolve to a systems.gmstn.chat.message record. */
    @required
    message: com.atproto.repo.strongRef.Main;
  }
}

// --- Externals ---

