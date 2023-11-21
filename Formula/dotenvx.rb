# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.2.24.tar.gz"
  sha256 "8b2f3850025a589b3fed9efc5f1770b32ef77b8e4f064c5633f8e5bcaec6b571"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.2.24/dotenvx-0.2.24-darwin-amd64.tar.gz"
      sha256 "e6f7c413e5ad9501431a98b9c6a10b707ff664d7ec34512f0f86e7d433cce067"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.2.24/dotenvx-0.2.24-darwin-arm64.tar.gz"
      sha256 "b21b7d94b687f7595aa18b1a2d60a814ad33d651151a9efae33661b75b9b0441"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.2.24/dotenvx-0.2.24-linux-amd64.tar.gz"
      sha256 "20b442d89dc4623d78d109591a44f2767e57df486f0a8db475b8cdafbf518d91"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.2.24/dotenvx-0.2.24-linux-arm64.tar.gz"
      sha256 "d0b8a0ce4559e1d7f74cd78739bd4015b059b465fc12144e81abf9f64fc223ee"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
