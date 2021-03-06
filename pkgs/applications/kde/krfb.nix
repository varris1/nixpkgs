{
  mkDerivation, lib,
  extra-cmake-modules, kdoctools,
  kdelibs4support, kdnssd, libvncserver, libXtst, libXdamage, qtx11extras
}:

mkDerivation {
  pname = "krfb";
  meta = {
    license = with lib.licenses; [ gpl2 fdl12 ];
    maintainers = with lib.maintainers; [ jerith666 ];
  };
  nativeBuildInputs = [ extra-cmake-modules kdoctools ];
  buildInputs = [ libvncserver libXtst libXdamage qtx11extras ];
  propagatedBuildInputs = [ kdelibs4support kdnssd ];
}
