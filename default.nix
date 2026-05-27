{ lib, buildNpmPackage }:

buildNpmPackage {
  pname = "gemstone-lexicons";
  version = "0.0.1";

  src = ./.;

  npmDepsHash = lib.fakeHash;

  meta = {
    description = "gemstone lexicons";
    homepage = "https://github.com/gemstone-systems/lexicons";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "example";
  };
}
