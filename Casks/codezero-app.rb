cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.8.1"
    sha256 arm:   "6c230df01a3d47193887afbc686deba1727c0ef895b36570e6486423c6022220",
           intel: "52dfb9a9fe324e3c8386ed2c7397ffd19978636871f47beeea56fc7f611941eb"

    url "https://releases.codezero.io/app/#{version}/Codezero-#{version}-#{arch}-mac.zip"
    name "Codezero App"
    desc "Collaborative Local Microservices Development"
    homepage "https://codezero.io"

    conflicts_with cask: "codezero-app@beta"

    app "Codezero.app"
    binary "#{appdir}/Codezero.app/Contents/Resources/bin/czctl"

    uninstall launchctl: "io.codezero.czctl",
              quit:      "io.codezero.codezero"
  end
