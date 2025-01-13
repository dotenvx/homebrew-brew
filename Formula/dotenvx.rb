# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.33.0.tar.gz"
  sha256 "d165fd048b2ce234a48f8578a413280cb14b4b83407ac9c51ed8c4c7ac42cd66"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.33.0/dotenvx-1.33.0-darwin-amd64.tar.gz"
      sha256 "75a7c18d35b9f1e010ebcde33fd8ae194f2e7d0aea87042921c9ecd576af1508"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.33.0/dotenvx-1.33.0-darwin-arm64.tar.gz"
      sha256 "31308f67f91dfd80ea5d25f8b8e8996e90578d097dbfbbd0180db0754e52dd50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.33.0/dotenvx-1.33.0-linux-amd64.tar.gz"
      sha256 "95bf646829881789f574d6fa9734009bd6ed328d2c42c9d6de11f0b3e063aa78"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.33.0/dotenvx-1.33.0-linux-arm64.tar.gz"
      sha256 "8e3ad1f594669ed10d44256a5b59bd3905402be021f706a77894a234656bff75"
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
