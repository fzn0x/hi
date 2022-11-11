## Functions

Function application using let bindings:

```nix
let
  addString = { x ? "", y ? ""}: x + y;
in
  addString { x = "nix is number "; y = builtins.toString 1; }
```

> `?` in the syntax represent to left-hand operand for the right hand expression value (default value).
> We call builtins.toString for the value of `1` so we can add the string value with the number

```sh
nix-instantiate --eval function.nix
```

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
