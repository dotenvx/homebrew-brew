# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "e6693fe3562ccad485295029bf0458f319489bffda38514533ab631ec70e1526"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.1.0/dotenvx-1.1.0-darwin-amd64.tar.gz"
      sha256 "8372e92d4702dbdf601311f62c822672b9f69609c7d4a0df2481d177a685503c"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.1.0/dotenvx-1.1.0-darwin-arm64.tar.gz"
      sha256 "e5c0f7a14f771ab759ef672aa9260e86b75059cf5685d0c1113f5aad5e231989"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.1.0/dotenvx-1.1.0-linux-amd64.tar.gz"
      sha256 "90024a4f0e132a0150d570fca6e224fb73c21a931ea9abfbfd7bd801a0bb0009"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.1.0/dotenvx-1.1.0-linux-arm64.tar.gz"
      sha256 "54a9fd12257c3e1d78a97ec025c34d94560225f15b2d0c7a0a1c0a0904feedae"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
