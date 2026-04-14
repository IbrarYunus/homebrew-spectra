class SpectraVis < Formula
  desc "Fast terminal music visualiser with ten styles and ScreenCaptureKit audio"
  homepage "https://github.com/IbrarYunus/spectra"
  url "https://github.com/IbrarYunus/spectra/releases/download/v0.1.1/spectra-0.1.1-arm64-apple-darwin.tar.gz"
  sha256 "02b2b79a7af0d22d3a442afc3c2e2de2beaa45d3d4cc7f61d73afe54c5875ea6"
  version "0.1.1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "spectra"
    lib.install "libspectra_sc.dylib"
  end

  test do
    assert_match "spectra", shell_output("#{bin}/spectra --version")
  end
end
