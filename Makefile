
default: styled

setup:
	mkdir -p out
	mkdir -p build

styled: setup
	cp ./styled/style.sty ./build 
	cp ./styled/content.tex ./build
	cd build && \
		xelatex -jobname=JoelDouglass-Resume -output-directory ../out content && \
		cp ../out/JoelDouglass-Resume.pdf ..

clean:
	rm -rf out/*
