# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class DotenvxPro < Formula
  desc "Dotenvx-pro cli"
  homepage "https://github.com/dotenvx/dotenvx-pro"
  url "https://github.com/dotenvx/dotenvx-pro/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "dcd9f9dbb3f670d292d26949e1a36335adce5f2c35a97b21d5b45362f310f41d"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.0/dotenvx-pro-0.7.0-darwin-amd64.tar.gz"
      sha256 "5010825e959e19bc18d4defd5979a1264c8c77cdead4d548786e50c01b4b5885"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.0/dotenvx-pro-0.7.0-darwin-arm64.tar.gz"
      sha256 "5cc68f04dc59ba468253f1dfa87b26a77e713e9b6fed2024b4f5d9b14c3ae800"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.0/dotenvx-pro-0.7.0-linux-amd64.tar.gz"
      sha256 "117a186dfed2cd1af25562d85a43afca7ce9b10cabcc2692c3acab2ca236f0bc"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.7.0/dotenvx-pro-0.7.0-linux-arm64.tar.gz"
      sha256 "e3cc3d02ec3849e078251b8c018beb38eba18301cc1c7019ad497aa04bb52814"
    end
  end

  def install
    bin.install "dotenvx-pro";
  end

  test do
    system bin/"dotenvx-pro", "--version";
  end
end
