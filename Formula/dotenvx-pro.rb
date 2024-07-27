# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class DotenvxPro < Formula
  desc "Dotenvx-pro cli"
  homepage "https://github.com/dotenvx/dotenvx-pro"
  url "https://github.com/dotenvx/dotenvx-pro/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "e733f85a9f7e1a1cdd185488ea049e8e25b47a880e48fb5246c2b84dd905a8f5"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.1/dotenvx-pro-0.7.1-darwin-amd64.tar.gz"
      sha256 "bc7ae2649219ddae24c3cc11f5d05b3b2641616fbbfcb4269c693883263a4d5b"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.1/dotenvx-pro-0.7.1-darwin-arm64.tar.gz"
      sha256 "3bc752f859a853183108babdd898e9dc46a9210798248ea8577a53f75f81f496"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.1/dotenvx-pro-0.7.1-linux-amd64.tar.gz"
      sha256 "468ea8028ee77587285ed22915d34d39bf5ae51af80bb3903f31b6f54466bdad"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.1/dotenvx-pro-0.7.1-linux-arm64.tar.gz"
      sha256 "3ea451e47ec8803f3c0e026b44ea29e74611bfc541fb54c32010384ab16dbb52"
    end
  end

  def install
    bin.install "dotenvx-pro";
  end

  test do
    system bin/"dotenvx-pro", "--version";
  end
end
