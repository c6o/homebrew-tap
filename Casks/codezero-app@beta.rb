cask "codezero-app@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0-beta2"
  sha256 arm:   "8f40efc9fdff97edac64ebcbf52e4248e21b26234abec868278fd907cc16dfdd",
         intel: "1c8ebe9e1feb4685ce48037557e84d02cd4120040a1c02236014f79ce495b095"

  url "https://releases.codezero.io/app/darwin/arm64/Codezero-darwin-#{arch}-#{version}.zip"
  name "Codezero App"
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io"

  auto_updates true
  conflicts_with cask: "codezero-app"

  app "Codezero.app"

  zap trash: "~/Library/Application Support/Codezero"
end
