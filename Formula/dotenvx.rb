# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.31.1.tar.gz"
  sha256 "94a160344f291642ab18e8e49343408255ee0a5ad9185c5a6587b5fd82fe6479"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.31.1/dotenvx-1.31.1-darwin-amd64.tar.gz"
      sha256 "d694bf4d8402d2257287b7a85d95b1f6c4363a7553f249535256bc38671861f9"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.31.1/dotenvx-1.31.1-darwin-arm64.tar.gz"
      sha256 "72d28cdd09c3dc12114492fd94c71a5ebed806e9f9bef100601bc52f9c32cd2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.31.1/dotenvx-1.31.1-linux-amd64.tar.gz"
      sha256 "108eedab3ba1258b8ef24d90459923521dd2aa21169792d7fd763b2786540fdb"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.31.1/dotenvx-1.31.1-linux-arm64.tar.gz"
      sha256 "4455d7a130bfe1a364e047d88afad28345e8d9bd92503b42d624d18e48e2a98c"
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
