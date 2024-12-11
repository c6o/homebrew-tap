cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.8.0"
    sha256 arm:   "3933d5bb21620366316afe789391926ce6b4253ec6a1ec1a4fcab12bfb1f2f4e",
           intel: "09bad744e94909a9e02bf5c7f4e873e13d6728848962b005130d2411c140721d"

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
