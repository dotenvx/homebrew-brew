# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class DotenvxPro < Formula
  desc "Dotenvx-pro cli"
  homepage "https://github.com/dotenvx/dotenvx-pro"
  url "https://github.com/dotenvx/dotenvx-pro/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "093888b0bcbdc5629a3c59bea2fbbfc4db4ef97043c060db56242d714cbb401f"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.6.0/dotenvx-pro-0.6.0-darwin-amd64.tar.gz"
      sha256 "6754c927aa461a698716240787baab665d7bd5054ba9eca4e942ffed01385b34"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.6.0/dotenvx-pro-0.6.0-darwin-arm64.tar.gz"
      sha256 "7939ad7080322c6d13195fdd1ea50abbab9ca5d84e99edd06ba630977d8cd500"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.6.0/dotenvx-pro-0.6.0-linux-amd64.tar.gz"
      sha256 "804ca37127c1a98032e8c7b832166364eb4f658cb0e23dbff99238061de40c10"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.6.0/dotenvx-pro-0.6.0-linux-arm64.tar.gz"
      sha256 "b8913a319a37997f372b61b56dbdd732c456730e7976151ac859668b6c8cfae4"
    end
  end

  def install
    bin.install "dotenvx-pro";
  end

  test do
    system bin/"dotenvx-pro", "--version";
  end
end
