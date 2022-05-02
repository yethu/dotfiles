function swagger-editor --description 'Run containerized swagger editor'
docker run -d -p 9999:8080 swaggerapi/swagger-editor
end
