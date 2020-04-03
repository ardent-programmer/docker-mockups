# docker-mockups

Each subfolder labeled with the technology example. Each section can be combined into one docker-compose to mockup a system. 

The intention for this is to work with my training courses, mockup up ideas, test software, workaround for approval processes. 

## How to use:
Each section has a README.md for the specific technology. You can also make a combination. 

To combine technologies merge the folder into one then combine the docker-compose.yml.


## Example:
### Combine MySql with MinIO:
merge both the mysql and minio directories.

## Data
<a name="volumes"></a>
Most of the data is stored in docker volumes. The actual volume name is the combination of the docker-compose file folder name plus the volume name in the compose file. So the folder name is a prefix to the volume name. 

You can list the docker volumes with 
```
docker volume ls
```
remove volumes with
```
docker volume rm {volume name}
```
remove volume based on docker-compose volume name
```
docker volume rm {folder}_{docker-compose volume name}
```
