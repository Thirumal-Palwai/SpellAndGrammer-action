# Spell-and-Grammer-check-action

A GitHub action to check spellings and grammer using vale

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
    runs-on: ubuntu-20.04
    steps:
    - uses: actions/checkout@v2
    - run: sh ./checks.shs
```

## please open an issue at this repo for any BUG/Enhancement request
- https://github.com/philips-internal/Spell-and-Grammer-check-action/issues