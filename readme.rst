===================================================
LaTeX Document Class for ANS Conference Proceedings
===================================================

The .cls file in this repository can be used as a LaTeX document class file when
preparing manuscripts for various topical conferences organized by the American
Nuclear Society. This includes the following conferences:

- PHYSOR
- Mathematics and Computation (M&C)
- etc.

To use the document class, copy it to the directory where your LaTeX source is
and add the following line at the beginning of your LaTeX file:

    \\documentclass{ansconf}

The headers are configurable with the `\\confTitle`, `\\confLocation`, and
`\\confPublished` commands. For example, for the M&C 2013 conference, these
would be:

    \\confTitle{International Conference on Mathematics and Computational Methods Applied to Nuclear Science \\& Engineering (M\\&C 2013)}

    \\confLocation{Sun Valley, Idaho, USA, May 5-9, 2013}

    \\confPublished{on CD-ROM, American Nuclear Society, LaGrange Park, IL (2013)}

On even pages, the heading should be set to a list of the authors with the
`\\authorHead` command:

    \\authorHead{Smith et al.}

On odd pages, the heading should be set to a short version of the title with the
`\\shortTitle` command

    \\shortTitle{MOC solutions to the C5G7 benchmark using OpenMOC}

Dependencies
------------

The `ansconf` class depends on the following packages: cite, titlesec, setspace,
indentfirst, fancyhdr, times, lastpage, caption, titling, authblk. These
packages are included in most standard LaTeX distributions. On
Debian-derivatives, you can ensure that you have these packages by running the
following command:

    sudo apt-get install texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended
