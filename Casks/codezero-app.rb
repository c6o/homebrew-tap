cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.10.0"
    sha256 arm:   "cd6c929db1dda75cc5b24ef6166b338e8df5bea7b6caedf2a9b8b8a7785a9c28",
           intel: "5fff52382839f21ab6a43dcf159707c1f5faeb9cc934424aae38513522337145"

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
