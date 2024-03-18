# 1 Billion Row Challenge - Go version

The objective of this repo is to solve the [1 Billion Row Challenge](https://github.com/gunnarmorling/1brc) from the Java Community using Go.

## Requirements

1. [Go](https://go.dev/learn)
2. [Make](https://www.gnu.org/software/make)
3. [Python 3](https://www.python.org) [^1]

## Build, Test and Run

All possible targets are defined in the [Makefile](Makefile) provided in the repo.

### Build

```bash
make
```

### Setup
```bash
make setup
```

### Test

```bash
make test
```

### Run

```bash
make run
```

## Development setup

A [bash script](setup.sh) is provided, so all you need to do is run the script.

```bash
./setup.sh
```

[^1]: Needed to generate the `measurements.txt` file used by the application. This file is not provided because it weights aprox 16G.
