# Modular Resume System

There are three parts:
- [main.typ] declares data that applies to the whole resume, such as the
information in the header. It also specifies which experiences to include.
- The various directories hold self-contained experience sections (e.g. jobs,
projects) to be optionally included in main.typ.
- [lib.typ], adapted from [stuxf/basic-typst-resume-template], provides a
library of common functions to present raw data. In other words, it is the
abstraction layer allowing for the separation of content and presentation.

This will not compile out of the box. You'll need to create a
`contact-info.typ` by renaming
[`example-contact-info.typ`][example-contact-info.typ] and modifying the fields
as desired.

[main.typ]: main.typ
[lib.typ]: lib.typ
[example-contact-info.typ]: example-contact-info.typ
[stuxf/basic-typst-resume-template]: https://github.com/stuxf/basic-typst-resume-template
