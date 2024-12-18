# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Codezero < Formula
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io/"
  version "2.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.codezero.io/2.8.1/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "801f0a5d60adb2848ef8212d581d085c6f6b415e07afb2170279794c60811d48"

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
      url "https://releases.codezero.io/2.8.1/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "258d46ac073c5ac3d0836c07940a719ce3307d8c27011290510712d47b65c1e7"

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
        url "https://releases.codezero.io/2.8.1/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "a479945d36e1b7f77da67a88de5bc30469be0e73dbab5d979a5fe0d8a926b11a"

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
        url "https://releases.codezero.io/2.8.1/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "361c86ecc5d2a90b5aa3ae8d398e8b049943e435b7044716e0e1adbc83ba0007"

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
      Successfully installed Codezero 2.8.1
      Run 'czctl help' or visit https://hub.codezero.io to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
