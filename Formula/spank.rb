class Spank < Formula
  desc "Slap your MacBook, it yells back. Uses Apple Silicon accelerometer via IOKit HID"
  homepage "https://github.com/taigrr/spank"
  url "https://github.com/taigrr/spank/releases/download/v1.2.4/spank_1.2.4_darwin_arm64.tar.gz"
  sha256 "da4de2e5b494eca3181b9557aa0d731a4f5eb63d23599e0363e038c157c8b2be"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "spank"
  end

  def caveats
    <<~EOS
      spank requires root privileges to access the accelerometer.
      Run with: sudo spank
    EOS
  end

  test do
    assert_match "spank", shell_output("#{bin}/spank --help 2>&1", 1)
  end
end
