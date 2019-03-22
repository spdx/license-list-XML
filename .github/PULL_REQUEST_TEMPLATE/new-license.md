New License Request Issue: #

- [ ] Add a plain-text sample of the license to `test/simpleTestForGenerator`, using the license ID as basename and `.txt.` as extension.

- [ ] Add an XML file to `src` with the license ID as basename and `.xml` as extension.

  - [ ] Set `listVersionAdded` on `<license>` if you know the relevant license-list version.

  - [ ] Surround optional text with `<optional>`.

  - [ ] Surround variable text placeholders with `<alt name="$name" match="$pattern"></alt>`.

    For a sense of common names, try `grep -rhoE 'alt name="[^"]+"' src | sort -u`

  - [ ] Place any title text in `<titleText>`.  See [Apache 2.0](/src/Apache-2.0.xml) for an example.

  - [ ] Place any standard license header in `<standardLicenseHeader>`.  See [Apache 2.0](/src/Apache-2.0.xml) for an example.
