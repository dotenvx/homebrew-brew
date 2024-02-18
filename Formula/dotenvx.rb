# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "8ca61f4aa4218681ccca6cc006a70d046925861ce4563c6fbccb40e3fcc6752c"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.16.0/dotenvx-0.16.0-darwin-amd64.tar.gz"
      sha256 "ef9eb4579d42053f7af75a77cee5f22cca3a6f26f508f1577c7d17e194bc32af"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.16.0/dotenvx-0.16.0-darwin-arm64.tar.gz"
      sha256 "de8f55620db9b19e22d4eee01127e787a61d173f67987faa40beee575cb2e407"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.16.0/dotenvx-0.16.0-linux-amd64.tar.gz"
      sha256 "347672fe811d801ded4ea47889a82c2450db93b0dbf554de4db347ce5785b324"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.16.0/dotenvx-0.16.0-linux-arm64.tar.gz"
      sha256 "fb12b1d7e53d8970fbaa49b33e0a75cd052eb43a598dd89b5ccaa09fc18852df"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
