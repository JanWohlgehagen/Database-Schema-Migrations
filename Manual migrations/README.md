
# Manual migration

The scripts in this project is intended for use on a Microsoft SQL database. It is assumed that you have some kind of DBMS that supports MSQL like Microsoft SQL Server Management Studio.


## Migrations

Each migration is seen as a change to the requirements of the EShop application, thus they have to be run in the correct sequence according to the version of the migration file name (ascending version number).

Each migration file is named like this:
```
<version>__<date (ddMMyyyy)>__<name (lower_snake_case)>.sql
```
Example:

```
v1__26022024_initial-schema.sql
```
## Rollbacks

Each migration file comes with a rollback file which must be run in the reverse order (descending version number)
```
<version>__<date (ddMMyyyy)>__<name (lower_snake_case)>_rollback.sql
```
Example:

```
v1__26022024_initial-schema_rollback.sql
```



## Authors

- [@Jan Wohlgehagen](https://github.com/JanWohlgehagen)
- [@Simon Tved Nielsen](https://github.com/tadiaki)
- [@Mikkel Theut Meier](https://github.com/theut94)


