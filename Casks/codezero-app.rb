cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.15.0"
    sha256 arm:   "6f8229720835987491f71e9b30dd0bb7da0590ce0d793039f347e82ed8703992",
           intel: "07f0ef4c681f3ae597bb1c3aa25b835005fe0aadb011fb821900169ed333f646"

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
