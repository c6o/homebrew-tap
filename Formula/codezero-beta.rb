# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CodezeroBeta < Formula
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io/"
  version "2.7.3-beta4"

  on_macos do
    on_intel do
      url "https://releases.codezero.io/2.7.3-beta4/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "89830a4fc38bd5d5203f704cd6fc19d1e9d9840f2729af26e4acb6327e049212"

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
    on_arm do
      url "https://releases.codezero.io/2.7.3-beta4/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2f086f2c5b64f9219cf1cf4f07ece9ce4791dfeec759fafda3824af1512adbf1"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://releases.codezero.io/2.7.3-beta4/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "7d484dc42e548b48501d92424bcf5215a6526fa111a03e21b4d1f4e2256ac229"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://releases.codezero.io/2.7.3-beta4/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "ca5a2c920d786b292b73d29d855cd346a4e536211cbc6842be0da1a1c24e8fdd"

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

  conflicts_with "codezero"

  def caveats
    <<~EOS
      Successfully installed Codezero 2.7.3-beta4
      Run 'czctl help' or visit https://hub.codezero.io to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
