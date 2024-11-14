cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.7.4"
    sha256 arm:   "183d7c223f2c4ac08b4f272cc4761b6daea6b33098d43d6605b84000751d5d54",
           intel: "e67ea7568eb6cd984c55f74cf3e50c58efe942e9f5bca689e02416359f9130f8"

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
