# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Codezero < Formula
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io/"
  version "2.16.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.codezero.io/2.16.1/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "00f55bc0dd707fe26faa589778a05848ebce34d4aecbba1b6de6a5589ba48127"

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
      url "https://releases.codezero.io/2.16.1/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a88615b81d0f9af369da69fd131508c65b02ce789f34ff8747e88754d57fbb1e"

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
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.codezero.io/2.16.1/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "50a6e4719f545bca8baf4bd7905a17d4cf36490f3e7605e9ceba1212882eddaf"

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
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.codezero.io/2.16.1/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "267e378b9272c2c9dc59308d42fbf5a6ef5e8919247c0ac3de221b8962d858dd"

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
  end

  conflicts_with "codezero-beta"

  def caveats
    <<~EOS
      Successfully installed Codezero 2.16.1
      Run 'czctl help' or visit https://hub.codezero.io to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
