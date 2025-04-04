# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.39.1.tar.gz"
  version "1.39.1"
  sha256 "c5dfdb8fd08cb54cea580662e65d6d8ad0f6116a8157467aa47efea04b3201a9"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.39.1/dotenvx-1.39.1-darwin-amd64.tar.gz"
      sha256 "7b0999ddba9afbe824bc4d0f5cb61cacfdcfd47fd90b997424325fcf2e20b893"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.39.1/dotenvx-1.39.1-darwin-arm64.tar.gz"
      sha256 "d1ad8c5719f85dceeff5360465ac32b26b5135400e1d12ae860af53043ed1e10"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.39.1/dotenvx-1.39.1-linux-amd64.tar.gz"
      sha256 "f3d308bbcdf43fc1267990e3e808c3adfd0c8d5fcc090d1e9d1f568fa2a3e596"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.39.1/dotenvx-1.39.1-linux-arm64.tar.gz"
      sha256 "c418e582202dd9425ea428c0f8fb14600f1ffbb0d17124eb824dc2c7a2ee638c"
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
