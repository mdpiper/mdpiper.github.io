I'm a research software engineer with over 20 years of geoscientific software
development experience in multiple languages on desktop and HPC systems.

I'm currently one of two developers in the NSF-funded [Community Surface Dynamics
Modeling System](https://csdms.colorado.edu) (CSDMS). We produce an open-source model coupling
cyberinfrastructure that transforms models written in Fortran, C, and C++ into
plug-and-play Python components through a jinja-templated, Cython-based
workflow.

## Software

I've contributed to the following software projects
(some more than others; check the GitHub stats for my contributions).

* The [Basic Model Interface](https://github.com/csdms/bmi) (BMI), a
  standardized set of functions for querying, modifying, and running models
    * [Documentation](https://bmi.readthedocs.io/) (written in Sphinx, hosted on Read The Docs)
    * Language bindings:
        * [bmi-c](https://github.com/csdms/bmi-c)
        * [bmi-cxx](https://github.com/csdms/bmi-cxx)
        * [bmi-fortran](https://github.com/csdms/bmi-fortran)
        * [bmi-java](https://github.com/csdms/bmi-java)
        * [bmi-python](https://github.com/csdms/bmi-python)
    * Conda recipes for the Fortran, C, C++, and Python language bindings on [conda-forge](https://github.com/conda-forge?q=bmi&type=&language=)
    * Sample implementations of the BMI, using a simple diffusion model:
        * [bmi-example-c](https://github.com/csdms/bmi-example-c)
        * [bmi-example-cxx](https://github.com/csdms/bmi-example-cxx)
        * [bmi-example-fortran](https://github.com/csdms/bmi-example-fortran)
        * [bmi-example-python](https://github.com/csdms/bmi-example-python)
    * The [BMI v2.0 paper](https://doi.org/10.21105/joss.02317) in the *Journal of Open Source Software*
* The [babelizer](https://github.com/csdms/babelizer/), an open source Python
  utility for wrapping models that expose a BMI, allowing them to be imported as
  Python packages
    * [Documentation](https://babelizer.readthedocs.io) (written in Sphinx, hosted on Read The Docs), including a long-form [example](https://babelizer.readthedocs.io/en/latest/example.html) of babelizing a model written in C
    * Templating code (written in Fortran and Cython, with jinja templating) for BMI-enabled Fortran models:
        * [bmi_interoperability.f90](https://github.com/csdms/babelizer/blob/develop/babelizer/data/%7B%7Bcookiecutter.package_name%7D%7D/%7B%7Bcookiecutter.package_name%7D%7D/lib/bmi_interoperability.f90)
        * [_fortran.pyx](https://github.com/csdms/babelizer/blob/develop/babelizer/data/%7B%7Bcookiecutter.package_name%7D%7D/%7B%7Bcookiecutter.package_name%7D%7D/lib/_fortran.pyx)
* The [Python Modeling Toolkit](https://github.com/csdms/pymt) (pymt) is an open source Python package that
  provides the tools needed to run and couple models that expose a BMI
    * [Documentation](https://pymt.readthedocs.io) (written in Sphinx, hosted on Read The Docs)
* dakotathon
* Permafrost Benchmark System


### Development Tools

I have experience with a variety of software development tools, services, and build systems,
including:
CMake and CTest (for C, C++, and Fortran projects, on Linux, macOS, and Windows),
Python packaging with `pip` and `conda` (including several recipes on conda-forge),
GNU toolchain (mostly `make`, some `configure`),
GNU compilers (`gcc` and `gfortran`),
`git` (primarily through GitHub, but also GitLab and and Bitbucket), Subversion,
Docker,
Emacs, Vi/m, VSCode, Eclipse,
Slurm, TORQUE, Portable Batch System,
shell tools (e.g., `grep`, `find`, and `sed`),
pytest, Sphinx, Jupyter Notebook, JupyterHub,
LaTeX, Markdown, reStructuredText, YAML, TOML, MediaWiki, Read the Docs,
Travis CI, GitHub Actions, Amazon Web Services, Coveralls, rpmbuild,
Confluence, JIRA


## Projects

PRMS components

ESPIn summer school. Jupyter Notebook.

CSDMS Carpentry

SWASH example, demonstrating...


## Invited Talks and Presentations

This is a selection of recent presentations.
I tend to give fewer lectures and more interactive workshops.

* 2020 GSA Annual Meeting Workshop: [Exploring Surface Processes using CSDMS Modeling Tools: How to Build Coupled Models](https://github.com/csdms/gsa-2020)
* 2019 AGU Fall Meeting Workshop: [Exploring Surface Processes: How to Build Coupled Models](https://github.com/csdms/agu-2019/)
* 2019 [USGS Community for Data Integration (CDI) Workshop](https://my.usgs.gov/confluence/display/cdi/2019+CDI+Workshop), where I gave an invited talk, a lightning talk, and a poster
* 2018 [Coupling of Tectonic and Surface Processes (CTSP) Workshop](https://csdms.colorado.edu/wiki/Form:Meetingconfirmation), where I gave an [invited talk](https://csdms.colorado.edu/wiki/Presenters-0037)
* [BMI Live!](https://github.io/csdms/bmi-live), an interactive workshop on
  adding a BMI to a model
* [Dakota seminar](https://mdpiper.github.io/dakota-seminar), a lecture on the
  [Dakota](https://dakota.sandia.gov) iterative systems analysis toolkit
* [ATOC IDL seminar](https://mdpiper.github.io/ATOC-IDL-seminar), clinic for
  CU-ATOC grad students


## Publications

My public [Google Scholar](https://scholar.google.com/citations?user=WoFAT20AAAAJ&hl) page
contains my publication history.
My [ORCiD profile page](https://orcid.org/0000-0001-6418-277X) also includes
my currently funded awards and software products.
