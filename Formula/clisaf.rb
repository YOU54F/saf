# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clisaf < Formula
  desc "pronounced silly saf"
  homepage "https://github.com/YOU54F/clisaf"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/YOU54F/clisaf/releases/download/v0.0.1/main-macos-arm64.gz"
      sha256 "bbadaef436a9002aea2268beedcda181877f94b1c107d1c26bdea084081aac35"
      bin.install "bundle/main-macos-arm64" => "clisaf"
    else
      url "https://github.com/YOU54F/clisaf/releases/download/v0.0.1/main-macos-x64.gz"
      bin.install "bundle/main-macos-x64" => "clisaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/YOU54F/clisaf/releases/download/v0.0.1/main-linux-x64.gz"
      sha256 "bbadaef436a9002aea2268beedcda181877f94b1c107d1c26bdea084081aac35"
      bin.install "bundle/main-linux-arm64" => "clisaf"
    else
      url "https://github.com/YOU54F/clisaf/releases/download/v0.0.1/main-linux-x64.gz"
      bin.install "bundle/main-linux-x64" => "clisaf"
    end
  end
  
  def install
    # bin.install "bundle/main-macos-x64" => "clisaf"
    puts "# Run 'clisaf'"
  end

  test do
    system "#{bin}/clisaf"
  end
end
