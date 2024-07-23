# Running Jupyter Noteboks in Visual Studio Code

Visual Studio Code supports working with Jupyter Notebooks natively, providing an integrated interactive coding environment that improves on the classic Jupyter Notebook experience. Here I'll walk you through my setup and how I use it to work on my projects.

## Why?

I've been using Jupyter Notebooks for a while now, and I love the interactive environment they provide. However, I've always found the Jupyter Notebook interface a bit clunky and not as polished as I'd like. Visual Studio Code provides a more polished and feature-rich environment that I find more comfortable to work in.

In particular, using VSCode for your Jupyter notebooks allows you to utilize code linting and formatting tools, which will help you write cleaner code. You can also use the built-in Git integration to manage your code changes.

## Installation

To get started, I'm assuming you already have Visual Studio Code installed. If not, you can download it from the [official website](https://code.visualstudio.com/).

To work with Jupyter Notebooks in VSCode, you'll need to install the following extensions:
- [Python](vscode:extension/ms-python.python): Provides python language support, virtual environment management, and other features.
- [Jupyter](vscode:extension/ms-toolsai.jupyter): Adds support for working with Jupyter Notebooks in VSCode.
- [Pylance](vscode:extension/ms-python.vscode-pylance) (Optional but recommended): Provides type checking and intellisense for Python.
- [Jupyter Keymap](vscode:extension/ms-toolsai.jupyter-keymap) (Optional but recommended): Adds Jupyter keybindings to VSCode.
- [Pylint](vscode:extension/ms-python.vscode-pylint) (Optional but recommended): Linting tool for Python. You can use others, this is my preference.
- [Black Formatter](vscode:extension/ms-python.black-formatter) (Optional but recommended): Code formatting tool for Python. You can use others, this is my preference.

You can install these extensions by searching for them in the Extensions view (`Ctrl+Shift+X` or `Cmd+Shift+X`) and clicking the Install button. You'll only need to install these extensions once.

## Setting up your virtual environment

I use Poetry to manage my Python environments, so I'll show you how to set up a virtual environment using Poetry. However, you can use whatever tool you prefer (e.g., virtualenv, pipenv, conda, etc.). I won't go into how to install those tools here. 

### 1. Create a new project directory

Create a new project directory and navigate to it VSCode by opening a new VSCode window and typing `Ctrl+Shift+P` or `Cmd+Shift+P` to open the command palette. Then type `Open folder` and select the folder you just created.

### 2. Create a new virtual environment

Open a new terminal in VSCode by typing ``Ctrl+` `` (On Mac, this shortcut also uses the `Ctrl` key instead of `Cmd`).

In the terminal, run the following command to create a new Poetry project:

```bash
poetry init
```

Follow the instructions to create your `pyproject.toml` file. When prompted to choose your dev dependencies, install the `jupyter` package. See my example [Poetry init logs](./poetry-init-logs.md) for an example of the output from running `poetry init`, and take a look at the [`pyproject.toml`](../pyproject.toml) file in this directory for an example of what the file should look like.

### 2.1 (Optional) Install linting and formatting tools

I prefer to use `black` for code formatting and `pylint` for linting. When prompted to choose your dev dependencies, you can also install these packages by searching for them. You can also add them later using `poetry add`.

### 3. Install the virtual environment

Once you've created your `pyproject.toml` file, run the following command to install your virtual environment:

```bash
poetry install
```

### 4. Activate the virtual environment

Now you need to tell VSCode to use your virtual environment. To do this, open the command palette again and search for `Python: Select Interpreter`. Then select the virtual environment you just created.

If you don't see your newly-created virtual environment in the list, you may need to restart VSCode. An easy way to do this is to open the command palette and search for `Developer: Reload Window`. This will quickly reload the window and refresh the list of available interpreters.

Now that your virtual environment is set up, VSCode will use it for all Python-related tasks, including running Jupyter Notebooks.

## Working with Jupyter Notebooks

To create a new Jupyter notebook, open the Explorer tab on the left side of the VSCode window. Right click the folder where you want to put your notebook (I usually create a `notebooks` folder) and select `New File`. Name the file with a `.ipynb` extension (e.g., `my_notebook.ipynb`). VSCode will automatically open that file with a Jupyter Notebook interface.

### Selecting your kernel

The first time you open a Jupyter Notebook in VSCode, you may need to select the kernel you want to use. The kernel is the Python environment that will run your notebook. You can select the kernel by clicking the kernel name in the top right corner of the notebook and choosing the virtual environment you created earlier. Again, if your new virtual environment doesn't show up, you may need to restart VSCode.

### Running cells

From here, the process of running cells in a Jupyter Notebook is the same as in the classic Jupyter interface. You can run a cell by clicking the `Run Cell` button in the toolbar or by pressing `Shift+Enter` or `Ctrl+Enter` (same on Mac and PC). You can also run all cells in the notebook by clicking the `Run All Cells` button.

### Using code linting and formatting

If you've set up a linter, you should see linting errors in your code as you type. You can format cells by running the `Format Document` command (`Shift+Alt+F` or `Shift+Option+F` on Mac).