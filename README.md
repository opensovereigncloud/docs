# IronCore Project Central Documentation

Welcome to the IronCore Project Documentation. This is the central source for all components of the IronCore project.

This repository holds the multi-repository configuration for the [IronCore-based](https://github.com/ironcore-dev) documentation.

Here you’ll find detailed guides, architecture overviews, usage instructions, and developer documentation.


## Running the Documentation Locally

To build and run the documentation container locally, run:


```
make start-docs
```

Then open your browser and navigate to http://localhost:8000 to view the documentation site.

## Cleaning Up

To remove unused Docker containers for this project, run:
```
make clean-docs
```
