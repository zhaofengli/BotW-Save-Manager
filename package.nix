{ lib, buildDotnetModule, dotnetCorePackages }:

buildDotnetModule rec {
  pname = "botw-save-manager";
  version = "1.1.4";

  src = ./.;

  projectFile = "BotWSaveManager.Command/BotWSaveManager.Command.csproj";
  nugetDeps = ./deps.nix;

  dotnetSdk = dotnetCorePackages.sdk_6_0;

  dotnetFlags = [ "--runtime linux-x64" ];

  executables = [ "BotWSaveManager.Command" ];

  meta = with lib; {
    description = "Breath of the Wild Save Manager";
    homepage = "https://github.com/DeltaJordan/BotW-Save-Manager";
    platforms = [ "x86_64-linux" ];
  };
}
