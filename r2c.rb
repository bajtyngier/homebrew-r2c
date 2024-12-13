class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/0.0.0.tar.gz"
  sha256 "83f113e6eb1312a5e14c8f25032efbe1da71176b612fc9926b629c1625662347"
  license "MIT"

  depends_on "python"

  def install
    bin.install "r2c.py" => "r2c"
  end

  test do
    system "#{bin}/r2c", "--version"
  end
end