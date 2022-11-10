## JSON

Get the output from the JSON file:

```sh
nix-instantiate --eval json.nix
```

## console.dir(json, { depth: null }) in Nix

Get a clarity answer with `--strict` parameter:

```sh
nix-instantiate --eval --strict json.nix
```
