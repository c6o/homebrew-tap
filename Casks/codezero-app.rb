cask "codezero-app" do
    arch arm: "arm64", intel: "x64"

    version "2.7.0"
    sha256 arm:   "7c17b928daf2792f275e7e64370787f99ef4fb6e01be2b5bdbb0cb25b75ff1f8",
           intel: "11212975254a478fab8d9b2d3a03f96db29aaadbc4f1f9a13299f1c4ed13d1ce"

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
