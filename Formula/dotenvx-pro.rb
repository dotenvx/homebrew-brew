# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class DotenvxPro < Formula
  desc "Dotenvx pro 🏆 – for teams and organizations that need secure, scalable secrets m"
  homepage "https://github.com/dotenvx/dotenvx-pro"
  url "https://github.com/dotenvx/dotenvx-pro/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "5e86e52e15a5ace43670c8f3e6130df6662ce2b87bfd6ca935eb1f0ed7d2bf9e"

  depends_on "dotenvx"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.16.0/dotenvx-pro-0.16.0-darwin-amd64.tar.gz"
      sha256 "49b31c433fabe5ed8a3897f95b3c20caf24fbbc2463a5d433b96f599319dd170"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.16.0/dotenvx-pro-0.16.0-darwin-arm64.tar.gz"
      sha256 "c5a9e69288cf30ab6cb5b12a2d0b4fc6ae39c6f9b5144d52f6ea640db1b5e273"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.16.0/dotenvx-pro-0.16.0-linux-amd64.tar.gz"
      sha256 "21851b0b489211aa1415bfcd1199bc2c614db3ffbe7ba7e2a28014bd19a7da77"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.16.0/dotenvx-pro-0.16.0-linux-arm64.tar.gz"
      sha256 "7b63e35b2823f28b1b00d43357e5e01f218b166056f6906799d88a33d2382cd2"
    end
  end

  def install
    bin.install "dotenvx-pro";
  end

  test do
    system bin/"dotenvx-pro", "--version";
  end
end
