cask "codezero-app@beta" do
    arch arm: "arm64", intel: "x64"

    version "2.17.3-beta4"
    sha256 arm:   "539f10cea5986566da39d486a2c18a2c67509a7064a6de8432646ea3258c4444",
           intel: "fe171885d0955ee1f8e58836c65b90cfc232f88a3528f38181f84606b964a06a"

    url "https://releases.codezero.io/app/#{version}/Codezero-#{version}-#{arch}-mac.zip"
    name "Codezero App"
    desc "Collaborative Local Microservices Development"
    homepage "https://codezero.io"

    conflicts_with cask: "codezero-app", formula: 'codezero'

    app "Codezero.app"
    binary "#{appdir}/Codezero.app/Contents/Resources/bin/czctl"

    uninstall launchctl: "io.codezero.czctl",
              quit:      "io.codezero.codezero"
  end
