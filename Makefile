VC=v
full: compile run
compile:
	v -enable-globals .
run:
	./vcss in.vcss out.css
