# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CodezeroBeta < Formula
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io/"
  version "2.7.0-beta5"

  on_macos do
    on_intel do
      url "https://releases.codezero.io/2.7.0-beta5/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "303ba9b49812d60961b734f6a4bfe5106b4ef089e531204c8e351249be9ad830"

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
      url "https://releases.codezero.io/2.7.0-beta5/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "38a13749db1b4c836bf726cf6e2d9330518f21f9c26d2b588100f48266d00481"

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
        url "https://releases.codezero.io/2.7.0-beta5/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "94ef3a826647979b3e9e363bb356c8ac3535c907d87b68f5beee3de9e4486ef7"

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
        url "https://releases.codezero.io/2.7.0-beta5/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "acdf09ac95c56da3e2b32589ac39b0784e87534bf041ecee255294ccc142fd4b"

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
      Successfully installed Codezero 2.7.0-beta5
      Run 'czctl help' or visit https://hub.codezero.io to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
