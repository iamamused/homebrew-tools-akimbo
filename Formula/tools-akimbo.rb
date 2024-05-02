# https://github.com/syhw/homebrew/blob/master/Library/Contributions/example-formula.rb

class ToolsAkimbo < Formula
    desc "CLI package of useful developer tools"
    homepage "https://jeffreysambells.com"
    url "https://github.com/iamamused/homebrew-tools-akimbo/raw/1.0.2/phar/tools-akimbo.phar"

    # get sha: shasum -a 256 tools-akimbo.phar
    sha256 "6e3efec1bf2164648eb826750060914771b45d67cf963e5e678e16e193edc4a0"

    depends_on "php"

    def install
        bin.install "tools-akimbo.phar" => "tools-akimbo"
    end

    def caveats; <<-EOS
        You need to create a config file.
	Run: 
	tools-akimbo worklogs:config
    EOS
    end
end
