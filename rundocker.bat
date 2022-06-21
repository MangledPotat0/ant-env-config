cd ~/Desktop/Coding/ant/codebase/

docker build -t antproject .

docker run -it -v C:/Users/user/Desktop/ant/data:/app/antproject/data/^
       	-u qtuser^
       	--name antprojectproc^
	antproject
