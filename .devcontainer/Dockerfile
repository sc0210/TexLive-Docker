# Use the official TeX Live image
FROM texlive/texlive
# FROM texlive/texlive:pretest-full-doc-src

# Install necessary packages and add multiverse repository
RUN apt-get update && \
    apt-get install -y \
    fontconfig \
    inkscape

RUN apt-get install fonts-arphic-ukai && \
    fc-cache -f -v

# Install VSCode extensions
RUN curl -fsSL https://code-server.dev/install.sh | sh && \
    code-server --install-extension james-yu.latex-workshop
    
# Set default shell to bash
CMD ["/bin/bash"]
