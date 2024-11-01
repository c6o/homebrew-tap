cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.7.3"
    sha256 arm:   "a5a2826877cd7e7d2048fc4c3935067c0260b2f66394da2d0a9150d537518556",
           intel: "2957285a949033131d490d8cc86a6548aacb63a7240164be1fba65391a0bcf50"

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
