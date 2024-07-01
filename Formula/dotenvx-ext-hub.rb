# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class DotenvxExtHub < Formula
  desc "🚫 deprecated: to be replaced by [dotenvx pro]"
  homepage "https://github.com/dotenvx/dotenvx-ext-hub"
  url "https://github.com/dotenvx/dotenvx-ext-hub/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "460eeebee4f301f83c08206aca8bc5a19eda4cf355f136feb577d1bcfc8d9304"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-ext-hub/releases/download/v0.4.0/dotenvx-ext-hub-0.4.0-darwin-amd64.tar.gz"
      sha256 "7410f5d44ce30dbf990633fed0741a0df1c0b0452a609b5035a3423f118dc279"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-ext-hub/releases/download/v0.4.0/dotenvx-ext-hub-0.4.0-darwin-arm64.tar.gz"
      sha256 "c60722aa326283dde65df59c9ff060e7f54cc5a605c5ec25adaf8c1eb0e833ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-ext-hub/releases/download/v0.4.0/dotenvx-ext-hub-0.4.0-linux-amd64.tar.gz"
      sha256 "4fe2c0abdcf34aa1d743baaa7858b89e6fa16cf3b726b266039d4a77bdd4a05b"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-ext-hub/releases/download/v0.4.0/dotenvx-ext-hub-0.4.0-linux-arm64.tar.gz"
      sha256 "0f65b5b5fdad1b211c028b6e9828a8c62b55d1ac8ea7c75a96b596a409446fb1"
    end
  end

  def install
    bin.install "dotenvx-ext-hub";
  end

  test do
    system bin/"dotenvx-ext-hub", "--version";
  end
end
