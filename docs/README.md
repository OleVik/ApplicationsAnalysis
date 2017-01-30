# Applications Analysis

Perform quantitative analysis on raw data from job applications in preparation for [qualitative write-up](http://olevik.me/applications) and evaluation. Designed to run through [Jupyter/IPython](http://jupyter.org/) and output SVG files, as well as some Markdown. Written mostly in Python 3, tested in Python 3.5.2 through Jupyter 4.1.1.

Notebooks are run consecutively, as follows:

1. [JSON.ipynb](./1.JSON.html) (transforms .txt-files into JSON)
2. [SQLite.ipynb](./2.SQLite.html) (transforms JSON into SQLite database)
3. [Display.ipynb](./3.Display.html) (creates plots)
4. [MarkdownTable.ipynb](./4.MarkdownTable.html) (creates Markdown table of data)

## Changelog
### 2.1.0
Added docs.

### 2.0.2
Cleaned raw data and repository.

### 2.0.0
Simplified structure and measurements, replaced GGPlot with Seaborn/Matplotlib.

### 1.0.0
Dropped LinesPerDay.ipynb Python/Plotly plot in favor of R's GGPlot. Added Descriptives.ipynb, Textstats.ipynb, MarkdownTable.ipynb, and ReadingTime.ipynb which use [RPy2](http://rpy2.readthedocs.org/) to bridge Python and R, and creates the Descriptives, Texstats, Consensus, and ReadingTime plots.