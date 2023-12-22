# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "018c03409fc1008f909b4e823b1ffc983395b0e14e4c66c82a4a7bf7363f13c1"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.7.0/dotenvx-0.7.0-darwin-amd64.tar.gz"
      sha256 "f8e61b49d0839022af829ed4fc1d329a387c79b708bdd0e60d6bab7b965f2922"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.7.0/dotenvx-0.7.0-darwin-arm64.tar.gz"
      sha256 "007afe6c325c8ee8b102dcf26b248413fbaf98030bb5ac47c4f789711ff1d6fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.7.0/dotenvx-0.7.0-linux-amd64.tar.gz"
      sha256 "eab72dd9296bcc8eafcf3b39847b87b1169f234c602504406d12ae68019ad590"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.7.0/dotenvx-0.7.0-linux-arm64.tar.gz"
      sha256 "ea4173ac2ee7ec309a7b62b95d52d2e9d5669d98cd75ec3f82502d225a986eb3"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
