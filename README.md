# vale-spell-grammar-check-action

A GitHub action to check spelling and grammar using Vale. Vale has a rich understanding of many markup formats and a highly customizable extension system that is capable of enforcing custom in-house set of rules.

## Note: This action requires a configuration file ".vale.ini" in the root directory of your repository.

## Action input parameters

This action does not have any input parameters. But expects the configuration file ".vale.ini" from your repository.

```ini
StylesPath = /styles
Vocab = document
IgnoredScopes = code
[*.md]
BasedOnStyles = Vale,write-good
```

You can use the default styles available as part of this action by referring to "/styles" in StylesPath. To provide custom styles, change this path. Read more information from Vale's official [website](https://docs.errata.ai).

## Usages

### Invoke the action on a pull request to any branch
For Example:

```yml
name: Spell and grammer check
on: [pull_request]
jobs:
  checks:
    runs-on: ubuntu-20.04
    steps:
    - name: checkout
      uses: actions/checkout@master
    - name: "spell check via vale"
      uses: philips-internal/vale-spell-grammar-check-action@v1.0.0
```

## please open an issue at this repo for any BUG/Enhancement request
- https://github.com/philips-internal/vale-spell-grammar-check-action/issues
