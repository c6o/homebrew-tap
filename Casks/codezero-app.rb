cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.20.0"
    sha256 arm:   "351b21ff588dbbe04e3da3c71977203c53f4ee0cdd9327bf1ab3b603b4e56301",
           intel: "7f3e4c4be7121b9cfe00c8b9342c555ef6146e4bf796ee4ba62579184b764e40"

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
