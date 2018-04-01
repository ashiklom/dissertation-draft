Author: Janusz Konrad (jkonrad@bu.edu)
Design: March 19, 2014
Revisoins: November 6, 2009, November 18, 2014

This package contains a template for BU Engineering MS Thesis and PhD Dissertation preparation in LaTeX/BiBTeX typesetting environment. It has been tested with TeTeX distribution on Linux and MiKTeX distribution on Windows, and apparently on a Mac as well. You can use various typesetting/compilation environments, depending on the operating system you are using. For example, TexStudio works well on Windows. If you compile the final document using plain Latex (dvi-ps-pdf chain) all your figures must be in EPS (Encapsulated PostScript format). Alternatively, you can compile with PDFLatex (directly into PDF) and then you can use figures in PDF format (but you cannot mix PDF and EPS).

The package specifies thesis/dissertation style conforming to the requirements described in ``Guide for Writers of Theses & Dissertations'' published by BU libraries and availble at http://http://library.bu.edu/theses. For detailed questions on BU thesis/dissertation formatting, please contact Brendan McDermott at the Mugar Memorial Library (brendan@bu.edu).

This package includes the following files:

- thesis.tex : main template for a thesis/dissertation,
- bu_ece_thesis.sty : thesis/dissertation LaTeX style file,
- 5 folders with templates for various parts of a thesis to which the main file refers.

You can easily add new chapters by creating new folders and adding new EPS/PDF figures to a Figures sub-folder in each chapter. Note that a graphics path can be set in each chapter (\graphicspath{}) so that when invoking EPS files you do not need to include the full path; files are found automatically if placed in the Figures sub-folder.

In addition to bu_ece_thesis.sty LaTeX style file, a number of other style files are used, including the bibliography in apalike format, but these should download automatically and be transparent to the user.

This template can be easily adapted for: 

- Master's Thesis (default is PhD dissertation): check the setup at the top of 0_Prelim/prelim.tex file

- Non-Engineering students: check \COE and \Coe definitions at the bottom of bu_ece_thesis.sty file.

Although the package has been tested using TeTex and MiKTeX, please note that the default setup in your particular incarnation of Latex may differ, and, therefore, dimensions, margins, etc. may not conform to BU thesis requirements. You can easily manipulate the following to meet BU thesis requirements:

In thesis.tex file:

\documentclass[12pt]{report} : font size (default for BU thesis dissertation is 12pt)
\documentclass[12pt,twoside]{report} : double-sided printing (not for the library)

In bu_ece_thesis.sty file:

\oddsidemargin 0.5in : left margin
\evensidemargin 0.0in : right margin, only for double-sided printing
\textwidth 6.0in : width of text leaving about 1in right margin
\topmargin 0in : top margin together with header separator give a 1.5in top margin in total
\headsep 24pt : header separator
\textheight 8.5in : text height leaving about 1in margin at the bottom

The confusion, as to why 0.5in left margin results in 1.5in margin on paper, stems from the fact that there exist hidden margins, usually set to 1in, that are set up during Latex environment installation. If these do not equal 1in, then the above values will be off. The fact that 1in+0.5in may not equal exactly 1.5in stems from the fact that it was fine-tuned for a specific printer, which may have its own offset. You need to fine tune these parameters for your specific Latex installation and printer.

PDF caveat:

In order to create a PDF version of the thesis under Linux with LaTeX -> PS -> PDF processing sequence, first prepare a PostScript file using dvips -P pdf -G0  (G0 fixes the ligature problem), and then convert to PDF as follows:

ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 \
-dSubsetFonts=true -dEmbedAllFonts=true -dAutoFilterColorImages=false \
-dAutoFilterGrayImages=false -dColorImageFilter=/FlateEncode \
-dGrayImageFilter=/FlateEncode -dModoImageFilter=/FlateEncode 

Please note that this process slightly reduces page size.
