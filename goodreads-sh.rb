class GoodreadsSh < Formula
  version 'v0.1.2'
  desc "📙 Command line interface for Goodreads.com. Written in Rust."
  homepage "https://github.com/thundergolfer/goodreads-sh"

  if OS.mac?
      url "https://github.com/thundergolfer/goodreads-sh/releases/download/#{version}/goodreads-sh-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "df7f2c895a8ca69b901b3714a8dd33531593c5710ff6a006ae14192c55034c97"
  elsif OS.linux?
      url "https://github.com/thundergolfer/goodreads-sh/releases/download/#{version}/goodreads-sh-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3180328ec30345f43361689ed545eddba58f569f3c17ae558cd5c2cb49b08509"
  end

  bottle :unneeded

  def install
    bin.install "goodreads-sh"
  end

  test do
		system "#{bin}/goodreads-sh"
	end
end


