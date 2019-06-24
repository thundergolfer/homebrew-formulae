class SlackifyMarkdown < Formula
  version 'v0.2'
  desc "Convert Markdown into Slack's bastardized Markdown-like formatting"
  homepage "https://github.com/thundergolfer/slackify-markdown"

  if OS.mac?
      url "https://github.com/thundergolfer/slackify-markdown/releases/download/#{version}/slackify-markdown-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b166a8f6aa6949514a7ad59e75174e4c24d82fbd961f89e7864c01d5b7f502c8"
  elsif OS.linux?
      url "https://github.com/thundergolfer/slackify-markdown/releases/download/#{version}/slackify-markdown-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46589942509e138cb5557fe05b443ae53fdf14b9ab6b041af1463ee9ab84439e"
  end

  bottle :unneeded

  def install
    bin.install "slackify-markdown"
  end

  test do
		system "#{bin}/goodreads"
	end
end

