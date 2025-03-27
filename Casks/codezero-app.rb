cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.16.0"
    sha256 arm:   "b141a980941fbce0e098a5b32830d159c73f6a7c5586cc6650385ab81cfad84c",
           intel: "df50882b22ecfec1f9d8f3a03fdd96acfbc75cdc0d688d6890b2febc0c0d19ec"

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
