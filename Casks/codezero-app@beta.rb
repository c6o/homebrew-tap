cask "codezero-app@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0-beta4"
  sha256 arm:   "82270787e844b2c4455987a72f59515db5d0208a719f7fb0d3b82e2524daa3ed",
         intel: "1a04b882549be2b223da55adbcf2bc2893b10388c72cb3db82dc2fe2ccd8400f"

  url "https://releases.codezero.io/app/darwin/arm64/Codezero-darwin-#{arch}-#{version}.zip"
  name "Codezero App"
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io"

  auto_updates true
  conflicts_with cask: "codezero-app"

  app "Codezero.app"

  uninstall launchctl: "io.codezero.czctl",
            quit:      "io.codezero.codezero" 
end
