cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.7.4"
    sha256 arm:   "86e5014ad185255d1b97dec7fb6202dbd687830f515c18d586e56952569c89d6",
           intel: "a8a43044f984db31d5e256904b291725dd927da0323244bde5e916d4952996a1"

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
