class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/1.0.0.tar.gz"
  sha256 "58932716cc7b06cc60f6a213833e2fbf14bd4feb4bbfedaa3ccce1909ffbb9f3"
  depends_on "python"

  def install
    chmod "+x", "rtc.py"
    bin.install "rtc.py" => "r2c"
    prefix.install Dir["*"]
  end
end