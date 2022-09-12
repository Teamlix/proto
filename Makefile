install-deps:
	apt-get install curl -y

install-buf:
	export PATH=$PATH:/usr/local/bin && \
	BIN="/usr/local/bin" && \
	VERSION="1.7.0" && \
	curl -sSL \
		"https://github.com/bufbuild/buf/releases/download/v${VERSION}/buf-$(uname -s)-$(uname -m)" \
		-o "${BIN}/buf" && \
	chmod +x "${BIN}/buf"