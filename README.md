Add `~/.config/nixpkgs/overlays.nix`:

```nix
[
  (import (builtins.fetchTarball https://github.com/aforemny/nixpkgs-n26/archive/master.tar.gz))
]
```

Then install it via `nix-env`:

```sh
$ nix-env -iA nixos.n26
```
