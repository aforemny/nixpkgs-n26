{ fetchgit, lib, buildPythonPackage, fetchPypi, gitMinimal }:
buildPythonPackage rec {
  pname = "py-range-parse";
  version = "1.0.5";

  src = fetchgit {
    url = https://github.com/markusressel/py-range-parse;
    rev = "16c950b1448ae705e0918ab737bd26a1ff9f4c9b";
    sha256 = "1n7360x5fibrq54xdcda4kdlih2llz3aryqiwahran77mcsmrdil";
    leaveDotGit = true;
  };

  patchPhase = "git branch -m master";

  nativeBuildInputs = [ gitMinimal ];

  meta = with lib; {
    homepage = https://github.com/markusressel/py-range-parse;
    description = "a library to parse commonly used range notations";
    license = licenses.mit;
  };
}
