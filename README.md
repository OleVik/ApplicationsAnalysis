# Applications Analysis

Perform quantitative analysis on raw data from job applications in preparation for [qualitative write-up](http://olevik.me/applications) and evaluation. Designed to run through [IPython](http://jupyter.org/) and output R's GGPlot SVG files and some Markdown. Written mostly in Python 2, tested in Python 2.7.10 through IPython 3.2.1.

### Changelog
#### 1.0.0
Using R's GGPlot. Added Descriptives.ipynb, Textstats.ipynb, MarkdownTable.ipynb, and ReadingTime.ipynb which use [RPy2](http://rpy2.readthedocs.org/) to bridge Python and R, and creates the Descriptives, Texstats, Consensus, and ReadingTime plots.