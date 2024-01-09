# Database setup

Git repository to test in local Mysql events https://dev.mysql.com/doc/refman/8.0/en/create-event.html

```
docker compose up
```
## Connection:

```
DATABSE_URL=mysql://user:password@localhost:3306/app
```

- Mysql CLI
```
mysql -u user -p -h 127.0.0.1 -D app -ppassword
```

### Details:

MYSQL_ROOT_PASSWORD is the password for the root user.
MYSQL_DATABASE is the name of the database that will be automatically created.
MYSQL_USER and MYSQL_PASSWORD are the username and password for a regular user (different from root).
MySQL's port 3306 is exposed on the same port on the host.
Two volumes are mounted: one to persist the database data (./data) and another for the initial SQL file (./init.sql).

## Utils

- Remove all data (Reset database)

```
docker compose down -v
```

