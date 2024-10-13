# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.19.1.tar.gz"
  sha256 "cb1db2054bd2f280f94e48c2a0e5c8afa14367346d1c2c28b7567cd00708a52e"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.19.1/dotenvx-1.19.1-darwin-amd64.tar.gz"
      sha256 "56ca87696e645b0265f83df33cb88d9ac72a183e0413baf5ee795fb506d07290"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.19.1/dotenvx-1.19.1-darwin-arm64.tar.gz"
      sha256 "6fdb38da4a17af0659a00fc178d2a38f9e2f933845f89e451f03b2bf58506a99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.19.1/dotenvx-1.19.1-linux-amd64.tar.gz"
      sha256 "b3dfc45ec0a561f71ac2873d074bb0b7162d9354ac7a6ab079f287b7f91eb579"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.19.1/dotenvx-1.19.1-linux-arm64.tar.gz"
      sha256 "511056f6d083165a601f475265ac12d952a7b5a420b0886934767c866dd433e6"
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
