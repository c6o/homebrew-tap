cask "codezero-app@beta" do
    arch arm: "arm64", intel: "x64"

    version "2.7.3-beta2"
    sha256 arm:   "1bf90a5f8f9f4b243406aab3d71b1410bcf3b9797c1c12d1f160de3a64a69537",
           intel: "ca969595fc2feb9b83811003dba38b0e7094773d573c101d1aa073aa84ee3294"

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
