# Latex Resume to PDF Workflow

This project automates the process of generating a PDF resume from a LaTeX (.tex) file and updating it on an S3 bucket, providing a static URL for my website - [manavendrasen.com/resume](https://manavendrasen.com/resume)

## Workflow Overview
![image](https://github.com/manavendrasen/resume/assets/26283488/27bd39d1-8743-43d8-8c1a-50632f9f6aa5)



1. **GitHub Action Trigger:**
   - When changes are made to the `.tex` LaTeX resume file, a GitHub Action is triggered.

2. **PDF Generation:**
   - The GitHub Action uses a custom Docker image [manavendrasen/latex](https://hub.docker.com/repository/docker/manavendrasen/latex) to generate the PDF file from the LaTeX source.

3. **Upload to S3:**
   - The generated PDF is then uploaded to an S3 bucket.

4. **Static URL for Website:**
   - S3 provides a static URL that can be used on your website to showcase the latest version of your resume.

## Getting Started

To set up this workflow for your project, follow these steps:

1. Clone this repository:
   ```bash
   git clone git@github.com:manavendrasen/resume.git
   cd resume
	```	
2. Update the `.tex` file and push. 
	- Configure `AWS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` and `AWS_BUCKET` in your Github Project Settings.
	- Modify the filenames in the ci.yml to match the .tex file.


### Local Setup
1. Clone this repository:
   ```bash
   git clone git@github.com:manavendrasen/resume.git
   cd resume
	```	

2. Update the resume content and Rename the `Manavendra_Sen_Resume.tex` file to `<your-file-name>` as desired.


3. Create the docker image
   ```bash
   docker build -d <your-name>/latex .
	```	

4. Create the docker image
   ```bash
   docker run --rm -v $(PWD):/data <your-name>/latex <your-file-name>_Resume.tex
   ```	

## References
- [shallwefootball/upload-s3-action](https://github.com/shallwefootball/upload-s3-action)
