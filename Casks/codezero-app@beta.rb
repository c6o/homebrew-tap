cask "codezero-app@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0-beta3"
  sha256 arm:   "36c0e0bbfa984731ca72993047db07ec342c3e47725131a2c7e702e28f9a9559",
         intel: "bba2a043e8c80f1814fd96cd19f1afd4bbad85f72da73dd70b8ff06a04b5ed5e"

  url "https://releases.codezero.io/app/darwin/arm64/Codezero-darwin-#{arch}-#{version}.zip"
  name "Codezero App"
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io"

  auto_updates true
  conflicts_with cask: "codezero-app"

  app "Codezero.app"
end
