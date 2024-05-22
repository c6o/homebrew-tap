# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Codezero < Formula
  desc "Collaborative Local Microservices Development."
  homepage "https://codezero.io/"
  version "2.3.2"

  on_macos do
    on_intel do
      url "https://releases.codezero.io/2.3.2/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "34a62e476b00c4560d135d7aeb9e26726f355f35ef7a1034adbe63331d156c2d"

      def install
        if File.exist?("/usr/local/bin/codezero")
          raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
        end
        bin.install "czctl"
        bin.install "czdaemon"
        bin.install "czsupervisor"
      end
    end
    on_arm do
      url "https://releases.codezero.io/2.3.2/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6ba01cee66591d77bd63a61312d81026972df76488d660c581f24afdfff0bfca"

      def install
        if File.exist?("/usr/local/bin/codezero")
          raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
        end
        bin.install "czctl"
        bin.install "czdaemon"
        bin.install "czsupervisor"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://releases.codezero.io/2.3.2/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "8b83ddb599db027c56ba72647241746064014c80ad5388fb421f5d75f0abf1c3"

        def install
          if File.exist?("/usr/local/bin/codezero")
            raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
          end
          bin.install "czctl"
          bin.install "czdaemon"
          bin.install "czsupervisor"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://releases.codezero.io/2.3.2/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "a1467ee21c1e3d53298377179e441fc143f86995ca99302077c875fce2d4e184"

        def install
          if File.exist?("/usr/local/bin/codezero")
            raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
          end
          bin.install "czctl"
          bin.install "czdaemon"
          bin.install "czsupervisor"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Successfully installed Codezero 2.3.2
      Run 'czctl --help' or launch the application to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
