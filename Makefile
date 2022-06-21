run:
	docker run --name latex --rm -v $(PWD):/build -w /build -it blang/latex:ubuntu bash -c "ls *.tex | xargs -n 1 pdflatex; rm *.aux *.log *.out"