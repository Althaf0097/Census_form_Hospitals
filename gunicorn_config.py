bind = "0.0.0.0:5000"
workers = 2
threads = 4
worker_class = "gthread"
timeout = 300
worker_tmp_dir = "/dev/shm"
worker_max_requests = 1000
worker_max_requests_jitter = 50 
