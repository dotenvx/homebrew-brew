# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.34.0.tar.gz"
  sha256 "9cdfcc9261a64e68be7bbe2eca53487e7964d0b77b3b6c0e41a327d6530eedab"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.34.0/dotenvx-1.34.0-darwin-amd64.tar.gz"
      sha256 "aa1e7f7f7326f0927f81dcf566c73c4184cb386a20e451a659267d31786fb261"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.34.0/dotenvx-1.34.0-darwin-arm64.tar.gz"
      sha256 "1e65a6782c92c044495c633be2d9ab2fae09646fbd4e9fb24e2fb67b047ddb67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.34.0/dotenvx-1.34.0-linux-amd64.tar.gz"
      sha256 "06cf938c4aab710a5327caffb0c6e316370a0b5c2beb09fa51f6019726178153"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.34.0/dotenvx-1.34.0-linux-arm64.tar.gz"
      sha256 "28a184645e75fdcaba50dcba9673da021ac39343a83ddab1784df0f0ad80105d"
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
