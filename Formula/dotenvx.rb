# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.24.0.tar.gz"
  sha256 "11a71c0d9c1629075b038530d10929b0da43143cf2b96346a0d1eaf71abed7b9"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.24.0/dotenvx-1.24.0-darwin-amd64.tar.gz"
      sha256 "49e40a3842cde7e4ac9d6b14f37afdfeba5fd25022bd8059de8711e6d50e4d84"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.24.0/dotenvx-1.24.0-darwin-arm64.tar.gz"
      sha256 "80e34c0dc98d4c51071f2ab5fdba9909cd478a64efe3b51d2bc6b467c894c59b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.24.0/dotenvx-1.24.0-linux-amd64.tar.gz"
      sha256 "59e92425a08b4b69fa21e50dc44143e649c52ce72c396f72e1aaf79735022578"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.24.0/dotenvx-1.24.0-linux-arm64.tar.gz"
      sha256 "a46df91571bce30ae84af4ad15d9ff697eca934ba7a9ba6201a76692ed2640ea"
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
