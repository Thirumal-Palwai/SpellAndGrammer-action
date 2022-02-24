# vale-spell-grammar-check-action

A Github action to check spelling and grammar using Vale. Vale has a rich understanding of many markup formats and a highly customizable extension system that is capable of enforcing custom in-house set of rules.

## Note: This action requires a configuration file ".vale.ini" in the root directory of your repository.

## Pre-requisite
In the [example](#example) file the Org-level-self-hosted runners are configured : [self-hosted, linux, X64, research]. In order to be able to use the runners please register your project: https://github.com/philips-internal/request-self-hosted-runner-access

## Action input parameters

| Parameter    | Description                                                      | required | Comment                                   |
| ------------ | ---------------------------------------------------------------- | -------- | ----------------------------------------- |
| [Parameters] | [Capability to provide flags and respective values to vale CLI]  |   [NO]   | accumulate all parameters into one string |

You can provide configuration file ".vale.ini" from your repository by placing it in repositoriy's root folder. Otherwise, it uses a configuration file present in action repository. It helps to control Vale's behavior:

```ini
StylesPath = /styles

Vocab = document

[*.md]

BasedOnStyles = Vale,write-good

```

You can use the default styles available as part of this action by referring to "/styles" in StylesPath. To provide custom styles, change this path. Read more information from Vale's official [website](https://docs.errata.ai).

## Usages

In order to use vale-spell-grammar-check-action, you have to add a `yml` file in the `.github/workflows/` directory of your repository. For example, it could be `.github/workflows/spell-grammar-check.yml`.

Do note that this action requires the contents of the repository, so it is recommended to use it with the Checkout action `actions/checkout@master`. You have to define this part in your workflow, since it not a part of the action itself.

### Invoke the action on a push to any branch
<a name="example"></a> For Example:

```yml
name: Spell and Grammar Check
on: push
jobs:
  spell-grammar-check:
    runs-on: [self-hosted, linux, X64, research]
    steps:
    - name: Checkout
      uses: actions/checkout@master
    - name: "Spell and Grammar Check using Vale"
      uses: philips-internal/vale-spell-grammar-check-action@v1.0.0

```

The above example is just one use-case. You can modify this according to your requirements. The whole idea is to be able to use this action as a step in your workflow:

```yml
    - name: "Spell and Grammar Check using Vale"
      uses: philips-internal/vale-spell-grammar-check-action@v1.0.0
```

## please open an issue at this repository for any BUG/Enhancement request
- https://github.com/philips-internal/vale-spell-grammar-check-action/issues
