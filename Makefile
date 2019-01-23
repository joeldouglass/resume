
default: classic

setup:
	mkdir -p out
	mkdir -p build

classic: setup
	cp ./classic/style.sty ./build 
	cp ./classic/content.tex ./build
	cd build && \
		xelatex -jobname=JoelDouglass-Resume-Classic -output-directory ../out content && \
		cp ../out/JoelDouglass-Resume-Classic.pdf ..

clean:
	rm -rf out/*
