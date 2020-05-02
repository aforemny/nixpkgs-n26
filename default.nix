self: super:
{
  container-app-conf = super.callPackage ./container-app-conf.nix {
    inherit (self.python3Packages) buildPythonPackage fetchPypi pytimeparse dateutil toml ruamel_yaml pytest;
    inherit (self) fetchgit gitMinimal py-range-parse;
  };

  py-range-parse = super.callPackage ./py-range-parse.nix {
    inherit (self.python3Packages) buildPythonPackage fetchPypi;
    inherit (self) fetchgit gitMinimal;
  };

  n26 = super.callPackage ./n26.nix {
    inherit (self.python3Packages) buildPythonApplication fetchPypi click inflect pyyaml requests tabulate tenacity urllib3 pytimeparse dateutil toml ruamel_yaml;
    inherit (self) container-app-conf py-range-parse;
  };
}
