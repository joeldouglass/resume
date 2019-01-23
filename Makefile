
default: classic

setup:
	mkdir -p out
	mkdir -p build

classic: setup
	cp ./classic/style.sty ./build 
	cp ./classic/content.tex ./build
	cd build && \
		xelatex -jobname=JoelDouglass-Resume-Classic -output-directory ../out content

clean:
	rm -rf out/*
