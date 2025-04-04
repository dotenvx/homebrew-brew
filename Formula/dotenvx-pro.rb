# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class DotenvxPro < Formula
  desc "Secrets management – done right 🏆"
  homepage "https://github.com/dotenvx/dotenvx-pro"
  url "https://github.com/dotenvx/dotenvx-pro/archive/refs/tags/v0.17.3.tar.gz"
  sha256 "90ed1d8eb5183db27db2a26337c9a1a3db54dccb153e74040cdb54c1b916e81d"

  depends_on "dotenvx"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.17.3/dotenvx-pro-0.17.3-darwin-amd64.tar.gz"
      sha256 "6b16718f1c8d84b79dbca0e31a18eb0aeee64b9a05d045a76204b1166c6d1e7e"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.17.3/dotenvx-pro-0.17.3-darwin-arm64.tar.gz"
      sha256 "7b8f4ab4df46ba04d0a6d6314f299f1ea69cd51a0d114c0a8bbec0e752d9377b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.17.3/dotenvx-pro-0.17.3-linux-amd64.tar.gz"
      sha256 "76e419e8969c391481d1ac17e7a771358a245e494b5eee79cdc5049d1ab4e403"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.17.3/dotenvx-pro-0.17.3-linux-arm64.tar.gz"
      sha256 "8b2cff212446e6618fe4d65ec3577dd3a43d057894081024c9f4a80642100679"
    end
  end

  def install
    bin.install "dotenvx-pro";
  end

  test do
    system bin/"dotenvx-pro", "--version";
  end
end
