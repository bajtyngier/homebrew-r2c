class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/0.0.5.tar.gz"
  sha256 "97514fc526715647a03a884439f9537c586966016234e39f80c0d82843b76893"
  depends_on "python"

  def install
    chmod "+x", "r2c/main.py"
    bin.install "r2c/main.py" => "r2c"
    prefix.install Dir["r2c/*"]
  end
end