# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "17af2b0fa0c75ed200128715a977f4e262b23d8522e3d944b401a49986c30e9b"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.0/dotenvx-0.3.0-darwin-amd64.tar.gz"
      sha256 "c895522470a837709ee46cdfd11b2864152cfc021a794deb56fa07c5c2ccd3cc"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.0/dotenvx-0.3.0-darwin-arm64.tar.gz"
      sha256 "2983c95fbfdb226f97eeb28b2d51878f398c89b1feeb808533b3a7d4434f4add"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.0/dotenvx-0.3.0-linux-amd64.tar.gz"
      sha256 "8de5e86b4082abc0688fd73aa0a43ff886b9c33380c4fe25937691948daa3a62"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.0/dotenvx-0.3.0-linux-arm64.tar.gz"
      sha256 "9f0614cbefbfd52d526c876e142edd16c6a2c83afb5f7d65c5193a93b18b7ddf"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
