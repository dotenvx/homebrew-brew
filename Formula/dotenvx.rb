# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.7.3.tar.gz"
  sha256 "85ddaeadda118517198ccbebfcaaa13a1afae9eb5a76942bde7a10010dcfab3e"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.7.3/dotenvx-0.7.3-darwin-amd64.tar.gz"
      sha256 "530528f276f1bd68261cc58c5c065929332900938c1e4cebc9ac05193123d6c0"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.7.3/dotenvx-0.7.3-darwin-arm64.tar.gz"
      sha256 "0c222e74237320e1af0be4c035a17e0ac370fff181bddee6f075c7899b181230"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.7.3/dotenvx-0.7.3-linux-amd64.tar.gz"
      sha256 "2d11b0ca3de91de50191e0b9927f1cdeb5f3bbe4361d371621c04fb44b3086ac"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.7.3/dotenvx-0.7.3-linux-arm64.tar.gz"
      sha256 "890a93521a441045473ccae66895d6ac976179ed53e20eca02804584d02b86c5"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
