# CV and Cover Letters
This is my personal CV and cover letters. Content unsafe for web has been intentionally removed but the artifacts should still build correctly with dummy information.
Feel free to use this repo as a basis for your own CV/Cover Letters.

It is based on LaTeX [moderncv template file](mirrors.ctan.org/macros/latex/contrib/moderncv/examples/template.tex).

## Installation

### On Fedora

```
sudo dnf install texlive texlive-moderncv.noarch texlive-moderncv-doc.noarch texlive-fira-doc.noarch texlive-fira.noarch 
```

## Build

Output files will be stored in the `output/` directory.

### Build all

Run `./build.sh`.

### Build CV

Run `./build-cv.sh`.

Actual content of CV must be stored in `private/shared.tex`.

### Build cover letters

Actual cover letter content must be stored in `private/cover-letters/`. 
They fill `./cover-letter.tex`.

Run `./build-cover-letters.sh` to build them all.

Run `./build-cover-letters.sh letter-name-1 letter-name-2` to build letter `letter-name-1`, `letter-name-2`.

For example if you store `private/cover-letters/acme.tex` for applying to Acme Inc., you can run `./build-cover-letters.sh acme` to build only this letter.

## Examples of private folder

Examples of private folder files are available in the `./examples` folder.

## License

### Source code

This project is primarily distributed under the terms of the BSD-Patent License, with portions covered by various OSI-approved licenses.

### Documentation

The following content: 
* accompanying documentation (markdown files)
* issues
* wiki
are distributed under the [Creative Commons - Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/deed.en).

See [LICENSE-BSD](LICENSE-BSD), and [COPYRIGHT](COPYRIGHT.md) for details.

## Contributing

By contributing to this project, either by opening an issue, updating the wiki, or sending a commit/pull-request via git, you accept to license your work under the [license used by the project](#License).

