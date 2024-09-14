{
  lib,
  stdenv,
  nixpkgs,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "bibata-modern-classic-hyprcursor";
  version = "0.3";
  src = nixpkgs.fetchurl {
    url = "https://github.com/javigomezo/bibata-modern-classic-hyprcursor/releases/download/v0.3/bibata-modern-classic-hyprcursor_0.3.tar.gz";
    sha256 = "sha256-17Ad29NUOGOKOCMZBx1OliJ6kvuM9mRUWNp50p9fb9A=";
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
