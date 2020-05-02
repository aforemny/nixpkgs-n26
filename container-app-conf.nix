{ fetchgit, lib, buildPythonPackage, fetchPypi, gitMinimal, pytimeparse, dateutil, py-range-parse, toml, ruamel_yaml, pytest }:
buildPythonPackage rec {
  pname = "container_app_conf";
  version = "5.0.0";

  # TODO
  #src = fetchPypi {
  #  inherit pname version;
  #  sha256 = "0mkjpya77wbza3swbswzbymnnrxciawk4ab3byq1sjqm2gdhadnr";
  #};

  src = fetchgit {
    url = https://github.com/markusressel/container-app-conf;
    rev = "255a889b6d4b9b11ba4f0d3e4dc3bc145cfafe41";
    sha256 = "1zr2cz90qq59vl09i6psks234hwc1fblh7l9lh28058ymmiqq8c5";
    leaveDotGit = true;
  };

  buildInputs = [ pytimeparse dateutil py-range-parse toml ruamel_yaml pytest ];

  doCheck = false;

  nativeBuildInputs = [ gitMinimal ];

  meta = with lib; {
    homepage = https://github.com/markusressel/container-app-conf;
    description = "a library to easily read application configuration values";
    license = licenses.mit;
  };
}
