cask "codezero-app@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0-beta6"
  sha256 arm:   "3491e5857c71864eb6f763c51f2b74f9981fe6d601a0a0b6bc57b35a4e01d21f",
         intel: "cba39f2634eb6d0e04474673516d8f230ab2f5af245939c079573ab4ca683f31"

  url "https://releases.codezero.io/app/darwin/#{arch}/Codezero-darwin-#{arch}-#{version}-mac.zip"
  name "Codezero App"
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io"

  conflicts_with cask: "codezero-app"

  app "Codezero.app"
  binary "#{appdir}/Codezero.app/Contents/Resources/bin/czctl"

  uninstall launchctl: "io.codezero.czctl",
            quit:      "io.codezero.codezero" 
end
