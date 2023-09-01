# lightning-rod

[![GitHub Actions](https://github.com/reapermc/lightning-rod/workflows/CI/badge.svg)](https://github.com/reapermc/lightning-rod/actions)

> Function library for the Bolt scripting language.


## Introduction

**Minecraft version: `1.20.1`**

This library features an API for the minecraft commands, usually improved by adding dynamic support or even adding new abstract functions.

```py
from lightning_rod:api import Bossbar, set_level, random

# example of OOP bossbars ^^
bb = Bossbar()

bb.name = 'gas prices'
bb.color = 'red'

bb.show()

# example of dynamic level setting at runtime ^^
set_level(random(5, 20))
```

## Installation

```bash
pip install lightning_rod
```

## Getting started

The library is designed to be used within any `bolt` script (either a `.mcfunction` or `bolt` file) inside a `bolt` enabled project.

```yaml
require:
    - bolt
    - lightning_rod

pipeline:
    - mecha
```

Once you've required `bolt` and `lightning_rod`, you are able to import the package's `api` module directly inside your bolt script.

Most of the imports come from the `lightning_rod:api` module as shown below.

```py
from lightning_rod:api import random, sqrt
```

Now you're free to use the API!


## Documentation

Coming soon...
<!-- Docs available [here](./docs/home.md). -->

---

License - [MIT](https://github.com/reapermc/lightning-rod/blob/main/LICENSE)
