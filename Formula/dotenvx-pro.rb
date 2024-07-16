# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class DotenvxPro < Formula
  desc "Dotenvx-pro cli"
  homepage "https://github.com/dotenvx/dotenvx-pro"
  url "https://github.com/dotenvx/dotenvx-pro/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "f12f73543873a918eb1347f77b14b55d1b653499ad33ebd287fb84d8ab834dec"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.1.3/dotenvx-pro-0.1.3-darwin-amd64.tar.gz"
      sha256 "557277f518f8fd2adbab39afe7d1b26fa8f33aa1b3052705a076a9ada956cb1b"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.1.3/dotenvx-pro-0.1.3-darwin-arm64.tar.gz"
      sha256 "011209b6d709c26b1c674c23828fef614e3ad1720d440314327e2c21aedcfe8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.1.3/dotenvx-pro-0.1.3-linux-amd64.tar.gz"
      sha256 "dc1406b7d38a9f0f2bdea0b9f14a0a798742dfb78dd850734f56357e94209aab"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.1.3/dotenvx-pro-0.1.3-linux-arm64.tar.gz"
      sha256 "2341b7625f5f674f458722f980b0819755339385d0a432064ce805fdb89f05e3"
    end
  end

  def install
    bin.install "dotenvx-pro";
  end

  test do
    system bin/"dotenvx-pro", "--version";
  end
end
