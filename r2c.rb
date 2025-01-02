class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/1.1.0.tar.gz"
  sha256 "fe61515f968ccefbe5fccdca938e3cf29f7429c2d9beee384eb2f0a78840a34a"

  depends_on "python@3"

  def install
    prefix.install Dir["*"]
    (bin/"r2c").write <<~EOS
      #!/bin/bash
      exec python3 "#{prefix}/main.py" "$@"
    EOS
  end
end