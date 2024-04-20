{
  lib,
  stdenv,
  nixpkgs,
  fetchurl,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "bibata-modern-classic-hyprcursor";
  version = "0.1";
  src = nixpkgs.fetchFromGitHub {
    owner = "javigomezo";
    repo = "bibata-modern-classic-hyprcursor";
    rev = "v0.1";
    sha256 = "30803fac00a2547825c47917808c5432898d18dd4219553637872f6f1b084410";
  };

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/icons/rose-pine-hyprcursor
    cp -R . $out/share/icons/rose-pine-hyprcursor/

    runHook postInstall
  '';

  meta = with lib; {
    description = "Bibata Modern Cursors";
    downloadPage = "https://github.com/javigomezo/bibata-modern-classic-hyprcursor/releases";
    homepage = "https://www.bibata.live/";
    license = licenses.gpl3;
    maintainers = with maintainers; [ful1e5];
  };
})
