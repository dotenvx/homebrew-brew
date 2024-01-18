# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.10.4.tar.gz"
  sha256 "563cda3d46b4b7e88c78e957688c4dec6efe1d200d2a98d2fa16ad8e7d47a0b4"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.10.4/dotenvx-0.10.4-darwin-amd64.tar.gz"
      sha256 "1867c2955e667a6922f9bad8358e6070b06352e7a5a3534c8f8261162c3dfe16"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.10.4/dotenvx-0.10.4-darwin-arm64.tar.gz"
      sha256 "7606cb1c848e590ad54ffed46d1ea4ffd74f4e8e0abee77490371fe12d591437"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.10.4/dotenvx-0.10.4-linux-amd64.tar.gz"
      sha256 "b2309d13b53fcb9e4685ab02fcfab91e8198abbc739cc70b06805a4664ca137c"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.10.4/dotenvx-0.10.4-linux-arm64.tar.gz"
      sha256 "e8f82ba9b1f9964de258166b5cd2a7fffce6a1100945737f4b7a6f039e469f4d"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
