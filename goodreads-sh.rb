class GoodreadsSh < Formula
  version 'v0.4.1'
  desc "📙 Command line interface for Goodreads.com. Written in Rust."
  homepage "https://github.com/thundergolfer/goodreads-sh"

  if OS.mac?
      url "https://github.com/thundergolfer/goodreads-sh/releases/download/#{version}/goodreads-sh-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "440a002ba5b313308dc81ca145e7b808da3dea84d231a53438b3f456d17258d5"
  elsif OS.linux?
      url "https://github.com/thundergolfer/goodreads-sh/releases/download/#{version}/goodreads-sh-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7d080b0b8129f5d61598706b1f9afb450edcf62f662ec42832f85a30a091ce0"
  end

  bottle :unneeded

  def install
    bin.install "goodreads-sh"
  end

  test do
		system "#{bin}/goodreads-sh"
  end
end


