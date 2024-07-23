# Poetry init logs

Below is the output from running `poetry init` in a new project directory as described in the [notebooks-in-vscode.md](./notebooks-in-vscode.md) document.

```bash

```
cmhack0114@FLW19V7PF1 vscode-tutorial % poetry init

This command will guide you through creating your pyproject.toml config.

Package name [vscode-tutorial]:  
Version [0.1.0]:  
Description []:  
Author [Chris Hacker <c.m.hacker1997@gmail.com>, n to skip]:  
License []:  
Compatible Python versions [^3.12]:  

Would you like to define your main dependencies interactively? (yes/no) [yes] no
Would you like to define your development dependencies interactively? (yes/no) [yes] 
You can specify a package in the following forms:
  - A single name (requests): this will search for matches on PyPI
  - A name and a constraint (requests@^2.23.0)
  - A git url (git+https://github.com/python-poetry/poetry.git)
  - A git url with a revision (git+https://github.com/python-poetry/poetry.git#develop)
  - A file path (../my-package/my-package.whl)
  - A directory (../my-package/)
  - A url (https://example.com/packages/my-package-0.1.0.tar.gz)

Package to add or search for (leave blank to skip): jupyter
Found 20 packages matching jupyter
Showing the first 10 matches

Enter package # to add, or the complete package name if it is not listed []:
 [ 0] jupyter
 [ 1] osbot-jupyter
 [ 2] pelican-jupyter
 [ 3] perspective-jupyter
 [ 4] prefect-jupyter
 [ 5] py5jupyter
 [ 6] pypowsybl-jupyter
 [ 7] pyxll-jupyter
 [ 8] osg-jupyter
 [ 9] parchords-jupyter
 [ 10] 
 > 0
Enter the version constraint to require (or leave blank to use the latest version):  
Using version ^1.0.0 for jupyter

Add a package (leave blank to skip): black
Found 20 packages matching black
Showing the first 10 matches

Enter package # to add, or the complete package name if it is not listed []:
 [ 0] black
 [ 1] pytest-black
 [ 2] pyls-black
 [ 3] jupyter-black
 [ 4] jupyterlab-black
 [ 5] mdformat-black
 [ 6] globality-black
 [ 7] aiosqlite-black
 [ 8] ament-black
 [ 9] beancount-black
 [ 10] 
 > 0
Enter the version constraint to require (or leave blank to use the latest version): 
Using version ^24.4.2 for black

Add a package (leave blank to skip): pylint
Found 20 packages matching pylint
Showing the first 10 matches

Enter package # to add, or the complete package name if it is not listed []:
 [ 0] pylint
 [ 1] pylama_pylint
 [ 2] pylint2codeclimate
 [ 3] pylint2junit
 [ 4] pylint2tusar
 [ 5] pylint-actions
 [ 6] pylint-af
 [ 7] pylint_aiida
 [ 8] pylint-airflow
 [ 9] pylint-args
 [ 10] 
 > 0
Enter the version constraint to require (or leave blank to use the latest version): 
Using version ^3.2.6 for pylint

Add a package (leave blank to skip): 

Generated file

[tool.poetry]
name = "vscode-tutorial"
version = "0.1.0"
description = ""
authors = ["Chris Hacker <c.m.hacker1997@gmail.com>"]
readme = "README.md"

[tool.poetry.dependencies]
python = "^3.12"

[tool.poetry.group.dev.dependencies]
jupyter = "^1.0.0"
black = "^24.4.2"
pylint = "^3.2.6"

[build-system]
requires = ["poetry-core"]
build-backend = "poetry.core.masonry.api"


Do you confirm generation? (yes/no) [yes] yes
```