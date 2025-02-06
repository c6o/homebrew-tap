cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.9.0"
    sha256 arm:   "68a4a25528a086de43a7710e676f42f3032e02798bbbed898c815307759775c9",
           intel: "2ec4a8b9c05df51a43714458a8431733127c0ae958276bb82caa6784be1cc292"

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
