# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "e3d8fc494818524cc025f8adcfc9fb56df0ec725492c1a5ba5a02ee3b1e5e3b4"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.3.1/dotenvx-1.3.1-darwin-amd64.tar.gz"
      sha256 "10d4f7c4e57dac4fbfca7379b38ef20facbdf2032e5d9df3f5c81f71fab6868c"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.3.1/dotenvx-1.3.1-darwin-arm64.tar.gz"
      sha256 "73987638bab8f00af3c3cf48910ace2b1fff3421dab5a8e423330b44d5867d16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.3.1/dotenvx-1.3.1-linux-amd64.tar.gz"
      sha256 "2d944b6dcc6feb7e56cfdfbc488b968247de4887362d80136e419f7a8f8fd319"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.3.1/dotenvx-1.3.1-linux-arm64.tar.gz"
      sha256 "1a0e0ce1e735dadea41c694051382933047aa45d88a0a82c99d3099c94092e88"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
