# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.16.0.tar.gz"
  sha256 "baf3afb696022f717034696998b506c8039c681d778855bae8216e8b5976c4e8"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.16.0/dotenvx-1.16.0-darwin-amd64.tar.gz"
      sha256 "47f321bbad3ad46ccac38774a9c8218fe99e86e126478781b56605c459072461"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.16.0/dotenvx-1.16.0-darwin-arm64.tar.gz"
      sha256 "30cb90226c7bded0b60113044ee9edcd717014970380502a9cab0fe33cceb845"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.16.0/dotenvx-1.16.0-linux-amd64.tar.gz"
      sha256 "eedcc6d61d4a79976ff7f931d9c9c387f191a493e7bed2f8d61d5effc5038983"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.16.0/dotenvx-1.16.0-linux-arm64.tar.gz"
      sha256 "0d3d402ee5733b1f6672cf4315c7f5e0988aa119a77f38f76d00e4c3d36ada9d"
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
