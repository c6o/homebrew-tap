# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CodezeroBeta < Formula
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io/"
  version "2.7.0-beta4"

  on_macos do
    on_intel do
      url "https://releases.codezero.io/2.7.0-beta4/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4e9bde93bd8c5c60841bfdf9b128607c73a7a88c286047c49161157e099f5122"

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
      url "https://releases.codezero.io/2.7.0-beta4/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e4c922c656fb88ca6affc22b52496d5d247f71301c067c03adf098461c03a08d"

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
        url "https://releases.codezero.io/2.7.0-beta4/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "11ea10db25283ce6089946cdce8746a5e3a575dc22491c33bf5be4645fea048f"

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
        url "https://releases.codezero.io/2.7.0-beta4/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "ecd24689d61bae30c24b438d301e5db0d5ccc1ed2907d86ef3732b31cb9f95cc"

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
      Successfully installed Codezero 2.7.0-beta4
      Run 'czctl help' or visit https://hub.codezero.io to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
