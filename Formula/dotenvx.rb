# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "fdb73dfb215ddf3d6dbde50e73b18c79c4c93e555fdbd3ec017d6c6bbbd3ed8a"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.6.0/dotenvx-0.6.0-darwin-amd64.tar.gz"
      sha256 "bfefcc4ad52eeb5233d1befe6e11891c4712bb0ffb50a402201a601103b0ab9f"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.6.0/dotenvx-0.6.0-darwin-arm64.tar.gz"
      sha256 "d22a9785154d4176f6c9f74ea087f2458dfcd77ae905ade20a9050d0e14ccba5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.6.0/dotenvx-0.6.0-linux-amd64.tar.gz"
      sha256 "6151aa109edc2c80b8f9a5c683c3d7b2cabee5f09e4b7fb03883b5604bc44013"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.6.0/dotenvx-0.6.0-linux-arm64.tar.gz"
      sha256 "d9fdaf26b936c028bed02dae670a627001f14d1221e9c6c516bdaac926631659"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
