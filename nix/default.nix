{
  lib,
  stdenv,
  nixpkgs,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "bibata-modern-classic-hyprcursor";
  version = "0.2";
  src = nixpkgs.fetchFromGitHub {
    owner = "javigomezo";
    repo = "bibata-modern-classic-hyprcursor";
    rev = "v0.2";
    sha256 = "sha256-xVYRmth/pS4UTMVr7+5YYL5eNn70UhvHQgvwMcotsms=";
  };

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/icons/bibata-modern-classic-hyprcursor
    cp -R . $out/share/icons/bibata-modern-classic-hyprcursor/

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
