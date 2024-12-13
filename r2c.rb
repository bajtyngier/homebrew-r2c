class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/0.0.1.tar.gz"
  sha256 "af36f01f08682d103846475efbe6475318789a4caa13965838e6ce76b2efb5ec"
  license ""

  depends_on "python"

  def install
    chmod "+x", "r2c.py"
    bin.install "r2c.py" => "r2c"
  end

  test do
    system "#{bin}/r2c", "--version"
  end
end