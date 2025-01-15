cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.8.2"
    sha256 arm:   "d8d723ea2dfc3cc03603c02eeff4c6689fdcd5c7bfff210d07f8c9d1e27b8011",
           intel: "4426dde3c58852a6ec1684225e691efbc8eab2721df13a72458150e5eb1f30a1"

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
