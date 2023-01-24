function drmi --description 'Remove multiple docker images by image name'
docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep $argv)
end
