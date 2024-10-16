cask "codezero-app@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0-beta7"
  sha256 arm:   "adb9e95827ab3e54aad8a29b88859af3dad6e01ffe8f5d2e92965948c72551e7",
         intel: "63cc7cc9a91dee142bfcbd4a24b259e9239e5d063633f0fc62ac151bea8da738"

  url "https://releases.codezero.io/app/#{version}/Codezero-#{version}-#{arch}-mac.zip"
  name "Codezero App"
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io"

  conflicts_with cask: "codezero-app"

  app "Codezero.app"
  binary "#{appdir}/Codezero.app/Contents/Resources/bin/czctl"

  uninstall launchctl: "io.codezero.czctl",
            quit:      "io.codezero.codezero" 
end
