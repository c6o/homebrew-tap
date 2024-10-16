# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CodezeroBeta < Formula
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io/"
  version "2.7.0-beta7"

  on_macos do
    on_intel do
      url "https://releases.codezero.io/2.7.0-beta7/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9355c2067f928818963a6dcfbd480ccae10c1f825d77dd18321748efc53eafae"

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
      url "https://releases.codezero.io/2.7.0-beta7/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3f042ce6b8c93705d0d9c0a8bf71336c77a49dc617108b3c8b0377c4915da099"

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
        url "https://releases.codezero.io/2.7.0-beta7/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "b165d244d58de1492b3c0444e7f89499c63f25da3a53dc3bbdbd327686c214c5"

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
        url "https://releases.codezero.io/2.7.0-beta7/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "f0e6c0cb9fd99a77f16e7210a26c899ebde4ab9a21da3091b4243c65cd702d42"

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
      Successfully installed Codezero 2.7.0-beta7
      Run 'czctl help' or visit https://hub.codezero.io to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
