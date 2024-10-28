cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.7.1"
    sha256 arm:   "58e083e9802b0f81b06b06de7766170f3ed4912b4cf28e81748e150c19979c6d",
           intel: "9611c96ba732c5370ed17eb1c0969d409478d21385637357daf7f74e915bec1f"

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
