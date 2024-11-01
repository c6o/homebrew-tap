cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.7.3"
    sha256 arm:   "d1bef247099dd71b7420af6678717b751eb8eb93f86f1de6cfa1b37ed64790d7",
           intel: "fe7090a3ee167e82fb6ba7725b051337e8de71821794b715ce53841438524000"

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
