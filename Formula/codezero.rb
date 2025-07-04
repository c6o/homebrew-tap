# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Codezero < Formula
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io/"
  version "2.19.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.codezero.io/2.19.0/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9a14095ab67ab9971e4629f8a3c29cdaa685a83af1c4a3dc901d5b2f36054a79"

      def install
        if File.exist?("/usr/local/bin/codezero")
          raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
        end
        bin.install "czctl"
        (bash_completion/"czctl").write `#{bin}/czctl completion bash`
        (fish_completion/"czctl.fish").write `#{bin}/czctl completion fish`
        (zsh_completion/"_cztl").write `#{bin}/czctl completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.codezero.io/2.19.0/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e3170aa51738718c1976ef56ba56d8f4f79b8e38e3ec50d6a64aa71aab13a413"

      def install
        if File.exist?("/usr/local/bin/codezero")
          raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
        end
        bin.install "czctl"
        (bash_completion/"czctl").write `#{bin}/czctl completion bash`
        (fish_completion/"czctl.fish").write `#{bin}/czctl completion fish`
        (zsh_completion/"_cztl").write `#{bin}/czctl completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://releases.codezero.io/2.19.0/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "18a26e43faa9a57fd4b760d8b4b787b77e06fe7190b341aad29bc8fdb2f190ad"
      def install
        if File.exist?("/usr/local/bin/codezero")
          raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
        end
        bin.install "czctl"
        (bash_completion/"czctl").write `#{bin}/czctl completion bash`
        (fish_completion/"czctl.fish").write `#{bin}/czctl completion fish`
        (zsh_completion/"_cztl").write `#{bin}/czctl completion zsh`
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://releases.codezero.io/2.19.0/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cb1e39aa1df803f1bedc0b5c72476b8e785742491919c88761e0993f15103193"
      def install
        if File.exist?("/usr/local/bin/codezero")
          raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
        end
        bin.install "czctl"
        (bash_completion/"czctl").write `#{bin}/czctl completion bash`
        (fish_completion/"czctl.fish").write `#{bin}/czctl completion fish`
        (zsh_completion/"_cztl").write `#{bin}/czctl completion zsh`
      end
    end
  end

  conflicts_with "codezero-beta"

  def caveats
    <<~EOS
      Successfully installed Codezero 2.19.0
      Run 'czctl help' or visit https://hub.codezero.io to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
