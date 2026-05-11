import "@typelex/emitter";

namespace systems.gmstn.richtext.facet {
  /** A rich text annotation describing a range of text content. */
  model Main {
    /** The byte range this facet applies to. */
    @required
    index: ByteSlice;

    /** The features applied to this byte range. */
    @required
    features: Feature[];
  }

  /** A byte range within text content. byteStart is inclusive, byteEnd is exclusive. */
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
