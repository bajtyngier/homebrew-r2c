class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/1.0.1.tar.gz"
  sha256 "7b44b7bceeb645e34c46874ee515006e5ecbe3b613acb09f8b9713d10c4441ee"
  depends_on "python"

  def install
    chmod "+x", "r2c.py"
    bin.install "r2c.py" => "r2c"
    prefix.install Dir["*"]
  end
end