class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/1.0.0.tar.gz"
  sha256 "864b8997f67b955c1cc887839216d929ff96e170cc107b09fd5fced9d6fdb3d9"

  depends_on "python@3"

  def install
    prefix.install Dir["*"]
    (bin/"r2c").write <<~EOS
      #!/bin/bash
      exec python3 "#{prefix}/main.py" "$@"
    EOS
  end
end