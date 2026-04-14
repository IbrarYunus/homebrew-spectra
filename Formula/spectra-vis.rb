class SpectraVis < Formula
  desc "Fast terminal music visualiser with ten styles and ScreenCaptureKit audio"
  homepage "https://github.com/IbrarYunus/spectra"
  url "https://github.com/IbrarYunus/spectra/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0755c3da9d8dbd2c3fd25dfe6729aae0ff17ffd6ae9c324e8d90b4df6bc41a50"
  license "MIT"
  head "https://github.com/IbrarYunus/spectra.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos
  depends_on xcode: ["14.0", :build]

  def install
    system "cargo", "build", "--release", "--locked"
    bin.install "target/release/spectra"
    lib.install "target/release/libspectra_sc.dylib"
  end

  test do
    assert_match "spectra", shell_output("#{bin}/spectra --version")
  end
end
