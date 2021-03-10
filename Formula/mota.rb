# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mota < Formula
  desc "A Shelly device firmware updater based on zeroconf (or bonjour) discovery for local networks using their built-in Over-The-Air update interface. It is suited for network setups where IoT devices do not have internet connectivity."
  homepage "https://github.com/ruimarinho/mota"
  version "2.0.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ruimarinho/mota/releases/download/v2.0.0/mota_2.0.0_macOS_x86_64.tar.gz"
    sha256 "3d16e47b2fdf707d34f6072ff596e608fd232bd51409d03fcac5be2260f92916"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ruimarinho/mota/releases/download/v2.0.0/mota_2.0.0_Linux_x86_64.tar.gz"
    sha256 "81d6715e6b39f3cec725bbacd0bf79a2cd30b9bd42f4b6b63d10d4d0efb661fb"
  end

  def install
    bin.install "mota"
  end

  test do
    system "#{bin}/mota --version"
  end
end
