import "@typelex/emitter";
import "../../../externals.tsp";

namespace systems.gmstn.chat.message {
  @rec("tid")
  /** Record declaring a chat message. Written to the sender's repository by the AppView. */
  model Main {
    /** The channel this message was sent to. Must resolve to a systems.gmstn.chat.channel record. */
    @required
    channel: com.atproto.repo.strongRef.Main;

    /** The text content of the message. */
    @minGraphemes(1)
    @maxGraphemes(5000)
    @minLength(1)
    @maxLength(50000)
    @required
    content: string;

    /** (optional) Rich text annotations for the message content. Annotations are indexed by UTF-8 byte offsets into the content string. */
    facets?: Facet[];

    /** The timestamp when this message was created. */
    @required
    createdAt: datetime;
  }

  /** A rich text annotation describing a range of the message content. */
  model Facet {
    /** The byte range this facet applies to. */
    @required
    index: ByteSlice;

    /** The features applied to this byte range. */
    @required
    features: Feature[];
  }

  /** A byte range within the message content. byteStart is inclusive, byteEnd is exclusive. */
  model ByteSlice {
    /** The inclusive start byte offset. */
    @required
    @minValue(0)
    byteStart: integer;

    /** The exclusive end byte offset. */
    @required
    @minValue(0)
    byteEnd: integer;
  }

  /** A feature applied to a byte range of text. */
  @closed
  @inline
  union Feature { Mention, Link, Tag };

  /** A mention of another user. */
  model Mention {
    /** The DID of the mentioned user. */
    @required
    did: did;
  }

  /** A hyperlink. */
  model Link {
    /** The URI being linked to. */
    @required
    uri: string;
  }

  /** A hashtag or topic tag. */
  model Tag {
    /** The tag value (without the leading #). */
    @required
    @maxGraphemes(640)
    @maxLength(6400)
    tag: string;
  }
}

// --- Externals ---

