docker stop api.fatih_merve_hello_world
docker rm api.fatih_merve_hello_world
docker rmi icobani/api.fatih_merve_hello_world
docker pull icobani/api.fatih_merve_hello_world
docker run -d -p 8014:8014  --name api.fatih_merve_hello_world icobani/api.fatih_merve_hello_world
