# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.3.6.tar.gz"
  sha256 "646d048c0675dd25b9ce461d1501ecd693f37ec1386be320c39d918874ae5684"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.6/dotenvx-0.3.6-darwin-amd64.tar.gz"
      sha256 "9bfa1f93a6b0a03fe5a746b6558bf24b4ad9e3c8ca6950691580f36c7e39557d"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.6/dotenvx-0.3.6-darwin-arm64.tar.gz"
      sha256 "4ad16f9e69ccd0ec73883956a6e38e059b7238a3e407c1d12ff3ac0b6e5d8285"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.6/dotenvx-0.3.6-linux-amd64.tar.gz"
      sha256 "f8e084c3a5eca064642877bd0360bba7dc462ccc3d7dae685f21b20c69efa030"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.6/dotenvx-0.3.6-linux-arm64.tar.gz"
      sha256 "74a996b302a5e26a08e46e70a9cc4797f3320e27a18859d1d9bed9de8a9d859c"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
