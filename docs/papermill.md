# Using Papermill to parameterize notebooks

[`Papermill`](https://papermill.readthedocs.io/en/latest/) is a tool for parameterizing, executing, and analyzing Jupyter Notebooks. It allows you to run the same notebook with different inputs, making it easy to explore different scenarios or run the same analysis with different datasets. It can help you automate your workflows and make your notebooks more reusable, less verbose, and more reliable. 

In this guide, I'll show you how to use `Papermill` to parameterize a notebook and run it with different inputs.

To run all the examples in this project, run the script [`run_papermill_examples.sh`](../scripts/run_papermill_examples.sh) in the `scripts` directory.

## Installation

I'm assuming you've already set Python and your virtual environment as described in the [notebooks-in-vscode.md](./notebooks-in-vscode.md) document. If not, please refer to that document for instructions on how to set up your environment.

To install `Papermill`, run the following command in your terminal:

```bash
poetry add papermill
```

This will install `Papermill` and its dependencies in your virtual environment.

To run `Papermill` in VSCode, you'll also need to install the [`Jupyter cell tags`](vscode:extension/ms-toolsai.vscode-jupyter-cell-tags) extension. This extension allows you to add cell tags to your notebook cells, which `Papermill` uses to identify parameters.

## Parameterizing a notebook

### Defining parameters

To parameterize a notebook, you need to add cell tags to the cells you want to parameterize.

Every cell with the `parameters` tag will be treated as a parameter cell by `Papermill`, meaning any variables defined in that cell will be treated as parameters that can be passed to the notebook when running it from the command line.

To add a cell tag to a cell, click the `...` button in the top right corner of the cell and select `Add cell tag`. Then type `parameters` in the input box at the top of your screen and press `Enter`.

Then, in that cell, define a constant variable in UPPERCASE format that you want to parameterize. For example:

```python
# parameters
NAME = "Hacker"
```

This cell will be treated as a parameter cell by `Papermill`, and the `NAME` variable will be treated as a parameter that can be passed to the notebook when running it from the command line. 

The original values you set in the parameter cell will be used as the default values when running the notebook without any parameters, or when running it using the GUI, but will be overridden by any values passed as parameters when running the notebook from the command line.

I tend to use the python CONSTANT naming convention for parameters, since they're generally not going to change during the execution of the notebook.

### Running the notebook

To run the parameterized notebook with different parameters, you can use the `papermill` command-line interface. The basic syntax for running a parameterized notebook is as follows:

```bash
papermill <input_notebook> <output_notebook> -p <parameter_name> <parameter_value>
```

input_notebook: The path to the input notebook you want to parameterize.
output_notebook: The path to the output notebook where the parameterized notebook will be saved.
parameter_name: The name of the parameter you want to pass to the notebook. Must match the variable name defined in the parameter cell.
parameter_value: The value you want to pass to the parameter.

For example, to run the parameterized notebook with the `NAME` parameter set to "Chris" instead of "Hacker," you would run the following command:

```bash
papermill input_notebook.ipynb output_notebook.ipynb -p NAME "Chris"
```

For more complex runs, you can create a yaml file with all the parameters you want to pass to the notebook and pass it to `papermill` using the `-f` flag. Your yaml file should contain keys corresponding to the parameter names and values corresponding to the parameter values. For example, you could pass yaml with the following content to the notebook from earlier to produce the same result as passing the `NAME` parameter via the command line:

```yaml
NAME: "Chris"
```

You'd then run the following command:

```bash
papermill input_notebook.ipynb output_notebook.ipynb -f parameters.yaml
```

Take a look at the [more complex example](../notebooks/complex_papermill_example.ipynb) in the `notebooks` directory to see how you can use `Papermill` to parameterize a notebook with multiple parameters. There's a yaml file at [test_config.yaml](../notebooks/papermill_args/test_config.yaml) that you can use to run the notebook with different parameters.

I recommend storing different parameter files for different versions of your notebooks in a `parameters` directory in your project. This way, you can easily run your notebooks with different parameters by passing the appropriate yaml file to `Papermill`.