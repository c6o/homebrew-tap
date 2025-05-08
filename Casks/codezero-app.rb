cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.17.0"
    sha256 arm:   "f6edd37775cdcb9d2eaaa17e73e23710b00283715e80b94666c190e5ef283f4a",
           intel: "44a1d60043fb58255cff3e7936c082bb6fa5745de2549382c47292a1340fe265"

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
