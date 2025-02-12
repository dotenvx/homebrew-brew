# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.36.0.tar.gz"
  sha256 "5271c687f524db4751ba92ebe5490ab938bebe8d4613d62419794b9df24bde97"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.36.0/dotenvx-1.36.0-darwin-amd64.tar.gz"
      sha256 "773012952ee86befb59f09d725eb20fa75cc009fb605f070b9495dd2f09ba25b"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.36.0/dotenvx-1.36.0-darwin-arm64.tar.gz"
      sha256 "77b279b0c981764e492e147b8d0a653b9e8ffa64c1fbf136b6853710f558ac41"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.36.0/dotenvx-1.36.0-linux-amd64.tar.gz"
      sha256 "58b0cb26fba6465ef4b27ac4d90aaf565b6f30b7bcc72057b51042bc38a476f8"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.36.0/dotenvx-1.36.0-linux-arm64.tar.gz"
      sha256 "ef4594ef332c74d41deade6e83710ea4af046474dd82b909e7e5f1ec2abeeffe"
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
