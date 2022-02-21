# Spell-and-Grammar-check-action

A GitHub action to check spellings and grammar using vale

## Note: WIP

## Action input parameters

## Usages

### Invoke the action on pull request to master branch
For Example:

```yml
name: checks
on: [push, pull_request]
jobs:
  checks:
    runs-on: [self-hosted, linux, X64, research]
    - name: checkout
      uses: actions/checkout@master
    - name: "spell check via vale"
      uses: philips-internal/Spell-and-Grammar-check-action@v1.0.0
      with:
        KubeconfigFile: "config.ini"
```
## please open an issue at this repository for any BUG/Enhancement request
- https://github.com/philips-internal/Spell-and-Grammar-check-action/issues
