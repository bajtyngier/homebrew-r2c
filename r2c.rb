class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/0.0.2.tar.gz"
  sha256 "79d5be20c87e882113f02dae33730f0ebc1ade8ae36e35f3be371bb809584c4d"
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