cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.16.1"
    sha256 arm:   "cc607c4840c903d5f39ec1695430d7ebe4c683a96cb251350f384183253a763f",
           intel: "04bdaffb75571ab48da700a336288565b5574fe34a78ca6815785503c34bff9a"

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
