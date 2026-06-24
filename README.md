# `dorian-sort-json`

Recursively sort JSON object keys.

## Install

```bash
gem install dorian-sort-json
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
sort-json [options] [json ...] [file ...]
```

Run `sort-json -h` for generated option details and `sort-json -v` for the installed version.

## Notes

- Use `--pretty false` for compact JSON output.

## Examples

### Sort inline JSON

```bash
sort-json '{"b":2,"a":1}'
```
