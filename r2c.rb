class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/0.0.4.tar.gz"
  sha256 "14cf1a6dcd566215858ce6c62a2c72e6213f59de96d36cfe1da3f5a03182620b"
  depends_on "python"

  def install
    chmod "+x", "r2c/main.py"
    bin.install "r2c/main.py" => "r2c"
    prefix.install Dir["*"]
  end
end