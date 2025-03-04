cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.11.0"
    sha256 arm:   "9388fc550ff596166eb58621f8ced649d2024f0768d55b33310308bca4ff067f",
           intel: "e8974186c0940e7ef03bb2306cead4cfecc2e7ee9b5040bd16c880eaf30e3235"

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
