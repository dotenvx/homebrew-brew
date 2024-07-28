# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class DotenvxPro < Formula
  desc "Dotenvx-pro cli"
  homepage "https://github.com/dotenvx/dotenvx-pro"
  url "https://github.com/dotenvx/dotenvx-pro/archive/refs/tags/v0.7.3.tar.gz"
  sha256 "c93cc3be1fa5fc3c62b2613450085371f3cca28a06e6bb8a176baa59b304d266"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.3/dotenvx-pro-0.7.3-darwin-amd64.tar.gz"
      sha256 "1703ff8198f707e8e8dcbb7847ffabccfc3501ff26c4351887dfc85471107de5"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.3/dotenvx-pro-0.7.3-darwin-arm64.tar.gz"
      sha256 "4517b02c2750d71967f7f6ccd16cdaf8d8aa0c8c298b13146e3e40d94af1242e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.3/dotenvx-pro-0.7.3-linux-amd64.tar.gz"
      sha256 "924df054ed53439af6a77670fb98d773dc87d2a86fbb41c784a39e5092100adc"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.3/dotenvx-pro-0.7.3-linux-arm64.tar.gz"
      sha256 "acdca3a403aa9c7ccf215e4579a5cef1ff6c2356bd3913be4d4cda4c54267fdc"
    end
  end

  def install
    bin.install "dotenvx-pro";
  end

  test do
    system bin/"dotenvx-pro", "--version";
  end
end
