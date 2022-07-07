python.exe -m pip install pip-tools

pip-compile -r requirements.txt

python local_paths.py
Copy .\paths.json ..\analysis\.
Copy .\paths.json ..\preprocessing\.
Copy .\paths.json ..\simulation\.
