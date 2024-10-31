# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.21.1.tar.gz"
  sha256 "7049486b96ce7cfa439292e987aaeefb2ce99d65353becb46b2ddb778392892e"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.21.1/dotenvx-1.21.1-darwin-amd64.tar.gz"
      sha256 "1b78706c19fe80bb8fe2edca571e02d82977f09a7b85c0701c1e000de9fb3485"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.21.1/dotenvx-1.21.1-darwin-arm64.tar.gz"
      sha256 "c259a5fdb1a0b4411b9e0fcba4da7ad6803dbbb4f978e433a08bcecbc64c98f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.21.1/dotenvx-1.21.1-linux-amd64.tar.gz"
      sha256 "2234a9a808dcdfed3facc57f69cc36c32323127bddb6fcff24a47f3ed57247cc"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.21.1/dotenvx-1.21.1-linux-arm64.tar.gz"
      sha256 "f229bec7c019b864a1f28857d894b288bae836a871126a7374349d7f93693219"
    end
  end

  def install
    bin.install "dotenvx"
bin.install_symlink "dotenvx" => "git-dotenvx"
  end

  test do
    system bin/"dotenvx", "--version"
  end
end
