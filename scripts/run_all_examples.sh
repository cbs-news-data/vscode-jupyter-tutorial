#!/usr/bin/env bash

# Run the notebook with papermill and no arguments
papermill notebooks/papermill_example.ipynb notebooks/papermill_runs/no_args.ipynb

# Run the notebook with papermill and a NAME argument
papermill notebooks/papermill_example.ipynb notebooks/papermill_runs/with_args.ipynb -p NAME "Chris"

# run the more complex example with parameters from a yaml file
papermill notebooks/complex_papermill_example.ipynb notebooks/papermill_runs/complex_example.ipynb -f parameters/test_config.yaml