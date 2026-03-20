class TmcCliRust < Formula
    desc "Command line client for TMC, written in Rust"
    homepage "https://github.com/rage/tmc-cli-rust"
    url "https://github.com/rage/tmc-cli-rust/archive/refs/tags/v1.1.2.tar.gz"
    sha256 "6d1bd9a9f7b70bf4dc78a711506825733d90ac009a0582b32998b411b2c87208"
    license "Apache-2.0"

    depends_on "rust" => :build

    def install
        system "cargo", "install", *std_cargo_args
    end

    test do
        system "#{bin}/tmc-cli-rust", "--version"
    end
end
