# Logging in to a remote Jupyter Server
1. On remote-host, run "jupyter notebook --no-browser --port=8080
2. On your local machine, run "ssh -L 8080:localhost:8080 username@remote-host"
3. Open the browser on your local machine, and paste the URL that was output during step 1
