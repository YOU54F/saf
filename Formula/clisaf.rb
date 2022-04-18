class Clisaf < Formula
  desc "Downloads clisaf via Homebrew"
  homepage "https://github.com/YOU54F/clisaf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/YOU54F/clisaf/releases/download/v0.0.1/main-macos-arm64.gz"
      version "0.0.1"
      sha256 "ba9a8a41a7ca4fde5e43c94df2e72d4b2d02f48d1d31abe793050c7211e302f3"
      def install
        bin.install "bundle/main-macos-arm64" => "clisaf"
        puts "# Run 'clisaf'"
      end
    else
      url "https://github.com/YOU54F/clisaf/releases/download/v0.0.1/main-macos-x64.gz"
      version "0.0.1"
      sha256 "bbadaef436a9002aea2268beedcda181877f94b1c107d1c26bdea084081aac35"
      def install
        bin.install "bundle/main-macos-x64" => "clisaf"
        puts "# Run 'clisaf'"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/YOU54F/clisaf/releases/download/v0.0.1/main-linux-arm64.gz"
      version "0.0.1"
      sha256 "ac5f389b1e7b1141cc19e4ebadba771f7a12ac34e76fb5aa0146185c50e9bdb7"
      def install
        bin.install "bundle/main-linux-arm64" => "clisaf"
        puts "# Run 'clisaf'"
      end
    else
      url "https://github.com/YOU54F/clisaf/releases/download/v0.0.1/main-linux-x64.gz"
      version "0.0.1"
      sha256 "06a6e3d6546ab169ab4047b7c54ea03ee9c559594ca06b7ab0a1b52eef6876be"
      def install
        bin.install "bundle/main-linux-x64" => "clisaf"
        puts "# Run 'clisaf'"
      end
    end
  end

  test do
    system "#{bin}/clisaf"
  end
end
