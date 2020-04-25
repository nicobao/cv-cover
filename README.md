# CV/Cover Letter LaTeX moderncv templates + build tools 
This is my personal CV and my cover letter template. Content unsafe for web has been intentionally removed but the artifacts will still build correctly with dummy information.
This repo is aimed to be used as a basis for your own CV/Cover Letters.

It is based on LaTeX [moderncv template file](mirrors.ctan.org/macros/latex/contrib/moderncv/examples/template.tex).

## Installation

Clone the project:
```
git clone git@github.com:nicobao/cv-cover.git 
# OR
git clone https://github.com/nicobao/cv-cover.git
```

Then install dependencies:

### On Fedora

```
sudo dnf install texlive texlive-moderncv.noarch texlive-moderncv-doc.noarch texlive-fira-doc.noarch texlive-fira.noarch 
```

## Build

Output files will be stored in the `output/` directory.

### Prerequisites

The following commands assume you're currently in the repository root directory (`cd cv-cover` after your git clone).

### Build all

To build all Cover Letters (all file in .tex from `private/cover-letters`):

run `./build.sh`.

### Build CV

Run `./build-cv.sh`.

Actual content of CV must be stored in `private/shared.tex`.

### Build cover letters

Actual cover letter content must be stored in `private/cover-letters/`. 
They fill `./cover-letter.tex` template file.

#### Build all letters

Run `./build-cover-letters.sh` to build them all.

#### Build specific letters

Run `./build-cover-letters.sh letter-name-1 letter-name-2` to build letter `letter-name-1` and `letter-name-2`.

For example, to apply to Acme Inc, create `private/cover-letters/acme.tex` with your cover letter content, and then run `./build-cover-letters.sh acme` to build only this specific letter.

## Examples of private folder

An example of files in private folder is available in the `example/` folder.

## License

### Source code

This project is primarily distributed under the terms of the BSD-Patent License, with portions covered by various OSI-approved licenses.

See [LICENSE-BSD](LICENSE-BSD), and [COPYRIGHT](COPYRIGHT.md) for details.

### Documentation

The following content: 
* accompanying documentation (markdown files)
* issues
* wiki

are all distributed under the [Creative Commons - Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/deed.en).

## Contributing

### Disclaimer

By contributing to this repository, either by opening an issue, updating the wiki, or sending a commit/pull-request via git, you accept to license your work under the [license used by the project](#license).

