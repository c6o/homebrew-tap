cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.12.0"
    sha256 arm:   "132be3fcf723a3d7c2f54542b06b476f8d6b40bfbd1a9d803ccec368a9599866",
           intel: "62baeadd6c64b6409672e8a6ee5d8d86017e52e13f26804481829b041f0c47a3"

    url "https://releases.codezero.io/app/#{version}/Codezero-#{version}-#{arch}-mac.zip"
    name "Codezero App"
    desc "Collaborative Local Microservices Development"
    homepage "https://codezero.io"

    conflicts_with cask: "codezero-app@beta", because: "both install `czctl`"
    conflicts_with "codezero", because: "both install `czctl`"
    conflicts_with "codezero-beta", because: "both install `czctl`"

    app "Codezero.app"
    binary "#{appdir}/Codezero.app/Contents/Resources/bin/czctl"

    uninstall launchctl: "io.codezero.czctl",
              quit:      "io.codezero.codezero"
  end
