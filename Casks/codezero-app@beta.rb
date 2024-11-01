cask "codezero-app@beta" do
    arch arm: "arm64", intel: "x64"

    version "2.7.3-beta1"
    sha256 arm:   "a7b90a900bc2d04732213b81551ab6aca9f82d4cd36579740fd78729d840bd86",
           intel: "7f4ec98b12f3cd7b4a36ec73c4ba379a7ee300823f16a10cf58b090c5fb3ccdb"

    url "https://releases.codezero.io/app/#{version}/Codezero-#{version}-#{arch}-mac.zip"
    name "Codezero App"
    desc "Collaborative Local Microservices Development"
    homepage "https://codezero.io"

    conflicts_with cask: "codezero-app"

    app "Codezero.app"
    binary "#{appdir}/Codezero.app/Contents/Resources/bin/czctl"

    uninstall launchctl: "io.codezero.czctl",
              quit:      "io.codezero.codezero"
  end
