cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.7.3"
    sha256 arm:   "8e7bcfde53c73822d2974e8be6fa39f86b6922e4064a587a4cc2c1d0a637195f",
           intel: "e17641b93a7011860aa21be551ce4af6125c4cbc27a7772bced9a7ee92fd59c6"

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
