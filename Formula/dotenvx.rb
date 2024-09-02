# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.13.2.tar.gz"
  sha256 "7c1365b030c9462d449e1d5fb705a7ee9210b16e8cc95f44d0a119434f357659"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.13.2/dotenvx-1.13.2-darwin-amd64.tar.gz"
      sha256 "17edd52bc8ff95115aee0a413991c9c2a8715d7ed836d7c00f58e956bd66146e"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.13.2/dotenvx-1.13.2-darwin-arm64.tar.gz"
      sha256 "407411b6adce098e8be5cb4b07b362cfd78a9987a0b9de4fb02c4f91fea4fef7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.13.2/dotenvx-1.13.2-linux-amd64.tar.gz"
      sha256 "24799eb6b5c5e247f29da0f9332992da7785d3555c018457e8cc15a5cd8d8e90"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.13.2/dotenvx-1.13.2-linux-arm64.tar.gz"
      sha256 "f2e9852a354aa16107c6240aa6f4727e8597b51dd999d1af08be64613a00d094"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
