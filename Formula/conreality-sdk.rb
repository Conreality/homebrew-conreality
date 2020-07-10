class ConrealitySdk < Formula
  desc "Conreality Software Development Kit (SDK) for macOS"
  homepage "https://github.com/conreality/conreality-sdk"
  url "https://github.com/conreality/conreality-sdk.git",
    :revision => "4ccf5a830f1665f862216e4a67cb60a5320fadd1"
  version "20.0.0~~2020.07.10"
  license "Unlicense"

  head "https://github.com/conreality/conreality-sdk.git"

  bottle :disable, "not built yet" # TODO

  depends_on "zig" => :build

  def install
    system "make", "all"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "make", "check"
  end
end
