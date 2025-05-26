cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.17.2"
    sha256 arm:   "46465c093c53e6ec03951a00899aa8b59d340d1794e4a85201c51b6d4e5889f7",
           intel: "e543d4b472c49fa264987efb969e8ffe4392b454afe2c4610466b387fe90a7c5"

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
