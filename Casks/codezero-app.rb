cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.13.0"
    sha256 arm:   "46ce2f0bedb60847f777fd3516e1c98215e96c178edc1e12324d5ac31cbf161c",
           intel: "902d940e96088af496359865be496298b2c5ebba1fa58c01ecc9b975fab3a763"

    url "https://releases.codezero.io/app/#{version}/Codezero-#{version}-#{arch}-mac.zip"
    name "Codezero App"
    desc "Collaborative Local Microservices Development"
    homepage "https://codezero.io"

    conflicts_with cask: "codezero-app@beta"
    conflicts_with "codezero"
    conflicts_with "codezero-beta"

    app "Codezero.app"
    binary "#{appdir}/Codezero.app/Contents/Resources/bin/czctl"

    uninstall launchctl: "io.codezero.czctl",
              quit:      "io.codezero.codezero"
  end
