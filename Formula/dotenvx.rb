# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "40f3bc9affd82961209db2e624329e1bf9df7d9db2377de0a083fad1f9e8969b"
  license "BSD-3-Clause" # BSD-3-Clause under Scott Motte

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.9.0/dotenvx-0.9.0-darwin-amd64.tar.gz"
      sha256 "dcc600074d031b5ef0323b64fc84542694359ad63e935f76707acf1778884ba1"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.9.0/dotenvx-0.9.0-darwin-arm64.tar.gz"
      sha256 "53c1f9186f2365397217c80867a62ad1e9cd736ccc3228a6371e4203f2353dda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.9.0/dotenvx-0.9.0-linux-amd64.tar.gz"
      sha256 "34045f4241454320486ffe3f64bfcd1c47d2e08e34a98460b27efb3544f7f448"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.9.0/dotenvx-0.9.0-linux-arm64.tar.gz"
      sha256 "0940b14cdf23cd770224d62f3b4a281b4e06085aff7e17ec0f94b85fd3368a96"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
