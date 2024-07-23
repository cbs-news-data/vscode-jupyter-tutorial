#!/usr/bin/env bash

# Run the notebook with papermill and no arguments
papermill notebooks/papermill_example.ipynb notebooks/papermill_runs/no_args.ipynb

# Run the notebook with papermill and a NAME argument
papermill notebooks/papermill_example.ipynb notebooks/papermill_runs/with_args.ipynb -p NAME "Chris"