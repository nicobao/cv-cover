# CV and Cover Letters

This is my personal CV and cover letters. Content unsafe for web has been intentionally removed but the artifacts should still build correctly with dummy information.

It is based on LaTeX [moderncv template file](mirrors.ctan.org/macros/latex/contrib/moderncv/examples/template.tex).

## Installation

### On Fedora

```
sudo dnf install texlive texlive-moderncv.noarch texlive-moderncv-doc.noarch texlive-fira-doc.noarch texlive-fira.noarch 'tex(kantlipsum.sty)' 
```

## Build

Output files will be stored in the `output/` directory.

### Build all

Run `./build.sh`.

### Build CV

Run `./build-cv.sh`.

### Build cover letters

Actual cover letter content must be named `private/cover-letter-#number.tex` with `#number` a unique number.
They use content from `cover-letter-template.tex`.

Run `./build-cover-letters.sh` to build them all.

Run `./build-cover-letters.sh #number` to build the cover-letter number `#number`. 

## License

See [LICENSE](LICENSE.md).
