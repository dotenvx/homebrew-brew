# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.44.2.tar.gz"
  version "1.44.2"
  sha256 "138f62405ef6431b9688ec04328367921b36093a49166e31069a0bb0551c165f"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.44.2/dotenvx-1.44.2-darwin-amd64.tar.gz"
      sha256 "8178c53db8bd727a8815eebe0c08a5c1fd66fed768ff8c8a521536ffb6b0ee1f"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.44.2/dotenvx-1.44.2-darwin-arm64.tar.gz"
      sha256 "8d18efb99db364d46c4aa63d18ca1fccf7038a877f1b6df7a82052a2eee62321"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.44.2/dotenvx-1.44.2-linux-amd64.tar.gz"
      sha256 "35458ac5db444b01c177629b6a8fcbe6739f278c58204a59e3e248e0e8c04dfd"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.44.2/dotenvx-1.44.2-linux-arm64.tar.gz"
      sha256 "3cf36bc77a1f7fa18a0619a1b7694e92f3b99192207e67efb15dce479ab826ad"
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
