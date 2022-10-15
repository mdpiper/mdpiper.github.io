<div id="inner_content">

## Summary

I'm a research software engineer with over 20 years of experience
developing geoscientific software
in multiple languages on desktop, cloud, and HPC systems.

I currently work in the NSF-funded
[Community Surface Dynamics Modeling System](https://csdms.colorado.edu) (CSDMS).
We produce open-source model coupling cyberinfrastructure
that transforms models written in Fortran, C, and C++ into
plug-and-play Python components through a standards-based, jinja-templated, Cython workflow.

## Software

I've contributed to the following core software projects at CSDMS.

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


### Development Tools

I have experience with a variety of software development tools, services, and build systems,
including:

* Version control with `git` (primarily through GitHub, but also GitLab and Bitbucket) and Subversion
* Build with CMake and CTest (for C, C++, and Fortran projects on Linux, macOS, and Windows)
* GNU toolchain (mostly `make`, some `configure`) and GNU Compiler Collection (`gcc` and `gfortran`)
* Shell tools (e.g., `grep`, `find`, and `sed`)
* Continuous integration with Travis CI and GitHub Actions
* Documentation with Sphinx, with hosting on Read the Docs
* Python packaging with `pip` and `conda` (including several conda-forge recipes)
* Python unit testing with pytest and nose; coverage with Coveralls 
* Pangeo geoscientific Python environment (e.g., xarray, Jupyter; also numpy, pandas)
* Geospatial image analysis with ENVI
* Containerization with Docker
* HPC job management with Slurm, Torque, Portable Batch System commands
* Team communication and issue tracking with Slack, Confluence, JIRA
* Development environments: Emacs, Vi/m, VS Code, Eclipse
* Document generation with \LaTeX, pandoc, Markdown
* Cloud services: Amazon Web Services, XSEDE Jetstream


## Projects

These are some recent internal and external projects I've been involved with.

### PRMS Componentization

In this project,
a collaboration with Rich McDonald, Steve Markstrom, and Parker Norton of the USGS,
the [Precipitation-Runoff Modeling System](https://www.usgs.gov/software/precipitation-runoff-modeling-system-prms) (PRMS) v6
was decomposed into four physical process components:
Surface, Soil, Groundwater, and Streamflow.
A BMI was added to each process component,
and each BMI-equipped component was wrapped in Python
and made callable through *pymt*.
To provide input data to drive the process models,
a web-services data component was developed to ingest [gridMET](http://www.climatologylab.org/gridmet.html),
a dataset of daily high-spatial resolution surface meteorological data
covering the contiguous United States.
In a simple test,
the four process components were coupled back into a single model
driven by the gridMET data component
and successfully compared with PRMS itself.
I'm a PI on this USGS-funded project.

Source code repositories:

* PRMS process components
    * [PRMSSurface](https://github.com/nhm-usgs/bmi-prms6-surface)
    * [PRMSSoil](https://github.com/nhm-usgs/bmi-prms6-soil)
    * [PRMSGroundwater](https://github.com/nhm-usgs/bmi-prms6-groundwater)
    * [PRMSStreamflow](https://github.com/nhm-usgs/bmi-prms6-streamflow)
* PRMS *pymt* components
    * [pymt_prms_surface](https://github.com/pymt-lab/pymt_prms_surface)
    * [pymt_prms_soil](https://github.com/pymt-lab/pymt_prms_soil)
    * [pymt_prms_groundwater](https://github.com/pymt-lab/pymt_prms_groundwater)
    * [pymt_prms_streamflow](https://github.com/pymt-lab/pymt_prms_streamflow)
* gridMET data component
    * [gridmet_bmi](https://github.com/nhm-usgs/gridmet_bmi) library
    * [pymt_gridmet](https://github.com/pymt-lab/pymt_gridmet) component
* [Demonstration](https://github.com/nhm-usgs/bmi-prms-demo)

### The Earth Surface Processes Institute (ESPIn)

The Earth Surface Processes Institute (ESPIn) is an NSF-sponsored summer school
for 25 graduate students, postdoctoral fellows, and early career faculty. ESPIn
is designed to help participants make advances in earth surface processes
research by teaching cyberinfrastructure skills in numerical modeling, best
programming practices, open source software development, and collaborative
coding. I'm a PI on this project.

* [2021 ESPIn announcement](https://csdms.colorado.edu/wiki/ESPIn2021)
* [2020 course materials](https://github.com/csdms/espin)

### Additional Projects

* [dakotathon](https://github.com/csdms/dakotathon) provides a BMI and a Python
  API for a subset of the methods included in the
  [Dakota](https://dakota.sandia.gov/) iterative systems analysis toolkit
* The [Permafrost Benchmark System](https://permamodel.github.io/pbs) is an open
  source web application for conducting benchmarking studies of permafrost
  models. I was a PI on this NASA-funded project.
* [CSDMS Carpentry](https://github.com/csdms/csdms-carpentry) is a fork of
  Software Carpentry with content modified for earth surface process modelers.
  We traditionally run this as a one-day preconference workshop before the CSDMS
  Annual Meeting, but it has been paused during COVID times.
* I manage the [CSDMS JupyterHub](https://csdms.colorado.edu/wiki/JupyterHub),
  including the Amazon Web Services backend.
* I stood up, and I currently manage, the [CSDMS Help Desk](https://github.com/csdms/help-desk/),
  where community members can ask questions and get help with CSDMS products and services.


## Invited Talks and Presentations

This is a selection of recent presentations.
I tend to give fewer lectures and more interactive workshops.

* 2020 GSA Annual Meeting workshop: [Exploring Surface Processes using CSDMS Modeling Tools: How to Build Coupled Models](https://github.com/csdms/gsa-2020)
* 2019 AGU Fall Meeting workshop: [Exploring Surface Processes: How to Build Coupled Models](https://github.com/csdms/agu-2019/)
* 2019 [USGS Community for Data Integration (CDI) Workshop](https://my.usgs.gov/confluence/display/cdi/2019+CDI+Workshop), where I gave an invited talk, a lightning talk, and a poster
* 2018 [Coupling of Tectonic and Surface Processes (CTSP) Workshop](https://csdms.colorado.edu/wiki/Form:Meetingconfirmation), where I gave an [invited talk](https://csdms.colorado.edu/wiki/Presenters-0037)
* [BMI Live!](https://github.io/csdms/bmi-live), an interactive workshop on
  adding a BMI to a model
* [Dakota seminar](https://mdpiper.github.io/dakota-seminar), a lecture on the
  [Dakota](https://dakota.sandia.gov) iterative systems analysis toolkit
* [ATOC IDL seminar](https://mdpiper.github.io/ATOC-IDL-seminar), a clinic on
  using IDL in the atmospheric sciences for CU-ATOC grad students


## Publications

My public [Google Scholar](https://scholar.google.com/citations?user=WoFAT20AAAAJ&hl) page
contains my publication history.
My [ORCiD profile page](https://orcid.org/0000-0001-6418-277X) also includes
my current funded awards and software products.
My brief [NSF biosketch](https://www.ncbi.nlm.nih.gov/myncbi/1hKfjBNRgpD1OC/cv/342791/)
is publicly available from SciENcv.


## Extracurriculars

* Co-founder and co-captain of Bighorn, a club Ultimate team competing in the
  USA Ultimate men's Grandmasters (40+) division (2015--present)
* Grass Roots Ultimate Lifetime Spirit Award winner (2015)
* Avid bicycle commuter, board gamer, and bookworm

</div>
