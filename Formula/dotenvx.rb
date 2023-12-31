# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.8.2.tar.gz"
  sha256 "1cd764a00bfa0987b94a495ca2f8d823abfee3cf9f9c646f6962ad89515700d0"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.8.2/dotenvx-0.8.2-darwin-amd64.tar.gz"
      sha256 "d49af09df241eaf8815922887c1e8b50be40eb805c341ada5647a3c37fed822a"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.8.2/dotenvx-0.8.2-darwin-arm64.tar.gz"
      sha256 "2d456b2f501a09f899adc508d9a7a3adec889a3a79df1c38ad0033a481680d7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.8.2/dotenvx-0.8.2-linux-amd64.tar.gz"
      sha256 "a4c757be46d3495eaa3964bcc744a71dfe3df49c55047f10e084832e47ad15a7"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.8.2/dotenvx-0.8.2-linux-arm64.tar.gz"
      sha256 "f73c067a45767af376e193f061ad6a4efecfab02ed9acc4a32a403eb60ed2815"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
