cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.19.0"
    sha256 arm:   "00bd53bf1e60f8c2160fdfbece169da37778ace39a677247aa711a9b8635c83f",
           intel: "6fb379b4bbea4648205b418a8659b4ffeafe2a9c8dc1b85573fa7c93f3ae7835"

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
