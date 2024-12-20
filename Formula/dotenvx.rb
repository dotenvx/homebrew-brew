# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.31.2.tar.gz"
  sha256 "fe578f53ebfaa6f683ceedd35c3ef6558d62d8c9d54152678ea62f75a7492482"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.31.2/dotenvx-1.31.2-darwin-amd64.tar.gz"
      sha256 "69fa3cb5cbdd48b59a30d18a50695f7bd764a255c22c54661e46d08d5de6a0d5"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.31.2/dotenvx-1.31.2-darwin-arm64.tar.gz"
      sha256 "0c437d5a522a84e6ffc70e6f3513e8bf8bf93d58a274e99c802e321b336af1ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.31.2/dotenvx-1.31.2-linux-amd64.tar.gz"
      sha256 "ce53dbc79fcad2cfc7f036a7041596f6c804fa109396364394f6d6afafaa50f9"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.31.2/dotenvx-1.31.2-linux-arm64.tar.gz"
      sha256 "5d901dfde46a32e6c27bf72a62b252dce3cb9d18b228705af0882cf3658f332f"
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
