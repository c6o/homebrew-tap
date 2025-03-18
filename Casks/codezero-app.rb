cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.14.0"
    sha256 arm:   "6ce2379adb498b21daad1c51b6da20cfae91b9058ab0f0ae9f941608f9660749",
           intel: "acdf2a0aa55cf1dda447887d19a6501d8367ad5e68bffae5f94eaaea6ab8dccf"

    url "https://releases.codezero.io/app/#{version}/Codezero-#{version}-#{arch}-mac.zip"
    name "Codezero App"
    desc "Collaborative Local Microservices Development"
    homepage "https://codezero.io"

    conflicts_with cask: "codezero-app@beta", formula: 'codezero'

    app "Codezero.app"
    binary "#{appdir}/Codezero.app/Contents/Resources/bin/czctl"

    uninstall launchctl: "io.codezero.czctl",
              quit:      "io.codezero.codezero"
  end
