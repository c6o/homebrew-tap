cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.17.1"
    sha256 arm:   "9e39e8509bc2ab440b5df4252589f12cab5e4732f2cad1b2951429c06dc05828",
           intel: "6fc4ed81f58645e110394935d959e39dbe533e2746e64baba4111da9b2b181df"

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
