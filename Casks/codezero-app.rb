cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.18.0"
    sha256 arm:   "ef16daf068e3b5a195b245ef6f123832b5117b77b21ec6e8ad575082448b2d83",
           intel: "7339e38368bed9d37eb435a4898991d71d4b1bb431691d329b4bae18032e41c0"

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
