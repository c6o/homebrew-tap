cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.7.2"
    sha256 arm:   "b7f49202508e6e149cfe777bef915f72721c3ce97c2b76c1a0f43ccf6c9b60b4",
           intel: "d7b509f505598f8de065dc791a6f6e37b4fcbc7d44fa114b3402ccc8bc1f6bcf"

    url "https://releases.codezero.io/app/#{version}/Codezero-#{version}-#{arch}-mac.zip"
    name "Codezero App"
    desc "Collaborative Local Microservices Development"
    homepage "https://codezero.io"

    conflicts_with cask: "codezero-app@beta"

    app "Codezero.app"
    binary "#{appdir}/Codezero.app/Contents/Resources/bin/czctl"

    uninstall launchctl: "io.codezero.czctl",
              quit:      "io.codezero.codezero"
  end
