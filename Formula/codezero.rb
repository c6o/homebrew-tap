# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Codezero < Formula
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io/"
  version "2.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.codezero.io/2.11.0/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6980f20d69dce717be90d500c32dd7055c9d710e7b401e315cb6871ea0f8b8b8"

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
      url "https://releases.codezero.io/2.11.0/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "aa6ffb1f7fa0e1e854fdb537e5895211f21818d81e274dc6b844b85171ae6826"

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
        url "https://releases.codezero.io/2.11.0/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "37226ea7781026754b5cb7526249930747593d99bb0cd70de336ceba0431c035"

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
        url "https://releases.codezero.io/2.11.0/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "c0bc4c93b8fe2dd8040eaf07e8afa4f571650bba7b8dd74db8d1d4f1a23d22b6"

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
      Successfully installed Codezero 2.11.0
      Run 'czctl help' or visit https://hub.codezero.io to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
