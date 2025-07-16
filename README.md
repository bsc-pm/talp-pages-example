# TALP-Pages-example

This repository contains an exemplary CI architecture for using TALP-Pages.

## GitHub

The GitHub example workflow can be found in a [mirrored version this repository](https://github.com/bsc-pm/talp-pages-example).
As the GitHub runners are quite restricive in terms of ressource and available features (e.g. reading performance counters) the goal is to show how TALP-Pages could be used rather than providing insight into the application benchmark.
The resulting report page is available under: https://bsc-pm.github.io/talp-pages-example/talp/

## GitLab

The GitLab pipeline also some problems, e.g. reading hardware counters is also not very stable in the machine the runner executes in. So please take performance counter data with a grain of salt.
The resulting report is available under: https://pages.pm.bsc.es/dlb/talp-pages-example/talp/


## NPB3.4-MZ Benchmark
We use the BT-MZ benchmark from the [NASA Parallel Benchmark Suite](https://www.nas.nasa.gov/software/npb.html) which is licensed under the N[NASA Open Source Agreement v1.3](https://opensource.org/licenses/nasa1.3.php)
Version 3.4.3 of the MZ benmark has been downloaded from [here](https://www.nas.nasa.gov/assets/npb/NPB3.4.3-MZ.tar.gz) and is under the `src/npb-mz` directory in this repository.

## Additional information 

Please visit the [DLB Documentation](https://dlb-docs.readthedocs.io/en/stable/talp_pages.html) to find more information on the usage.