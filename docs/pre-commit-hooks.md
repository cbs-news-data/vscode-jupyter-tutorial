# Using pre-commit hooks to check your Jupyter notebooks (and an example)

One of the biggest problems with Jupyter notebooks is that they allow you to run code out of order. This can lead to a situation in which your notebook appears to produce one result, but if you run the cells from top to bottom, you get a different result. 

One way to avoid this problem is to use pre-commit hooks to check your Jupyter notebooks before you commit them to your repository. In this article, I'll show you how to set up pre-commit hooks to check your Jupyter notebooks and provide an example of how I use them in my projects.

## What is a pre-commit? 

Pre-commit hooks are scripts that run before you commit your code. You set them up once at the start of your project and they will run automatically every time you make a commit. This can save you time and help you avoid common mistakes.

## Installing pre-commit

To use pre-commit hooks, you'll need to install the pre-commit package. You can do this using pip:

```bash
poetry add pre-commit
```

In the root of your project, you should create a file called `.pre-commit-config.yaml`. This file will contain the configuration for your pre-commit hooks. See below for an example of how I set up pre-commit hooks.

## Using Pre-commit hooks to check your Jupyter notebooks

Once you've installed pre-commit, you can set up a pre-commit hook to check your Jupyter notebooks. In your `.pre-commit-config.yaml` file, add the following configuration:

```yaml
repos:
-   repo: https://github.com/christopher-hacker/enforce-notebook-run-order
    rev: 1.7.0
    hooks:
    -   id: enforce-notebook-run-order
```

Then run the following command to install the pre-commit hooks:

```bash
pre-commit install
```

Now, every time you make a commit, the pre-commit hook will check your Jupyter notebooks to make sure they are running in the correct order. If there are any cells run out of order, the commit will fail and you'll need to fix them before you can commit your changes.