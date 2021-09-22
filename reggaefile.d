//module static_lib.reggaefile;

import reggae;
enum LIB = `libs/unixtime/src`;

alias lib = staticLibrary!(`unixtime` ~ libExt, Sources!([LIB]));
enum mainObj = objectFile(SourceFile(`src/app.d`), Flags(), ImportPaths(LIB));
alias app = link!(ExeName("app"), targetConcat!(mainObj, lib), Flags());
mixin build!app;
