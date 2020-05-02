{ lib, buildPythonApplication, fetchPypi, click , container-app-conf , inflect , pyyaml , requests , tabulate , tenacity , urllib3, pytimeparse, dateutil, py-range-parse, toml, ruamel_yaml }:
buildPythonApplication rec {
  pname = "n26";
  version = "2.2.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1wfbigfbk9ndrdlmlxs9vsacp8fqac2qznrkyhqr1k2x0qlb05cs";
  };

  propagatedBuildInputs = [
    click
    container-app-conf
    dateutil
    inflect
    py-range-parse
    pytimeparse
    pyyaml
    requests
    ruamel_yaml
    tabulate
    tenacity
    toml
    urllib3
  ];

  doCheck = false;

  meta = with lib; {
    homepage = https://github.com/femueller/python-n26;
    description = "API and command line tools to interact with the https://n26.com/ API";
    license = licenses.mit;
  };
}
