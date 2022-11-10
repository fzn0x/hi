## JSON

Get the output from the JSON file:

```sh
nix-instantiate --eval json.nix
```

Get a clarity answer with `--strict` parameter:

`console.dir(json, { depth: null })` in Nix

```sh
nix-instantiate --eval --strict json.nix
```
