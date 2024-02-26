
## EF - Project

In the entity framework project, 3 core entities has been introduced, with a data project to setup an SQLite database. There is an empty repo class, made for interaction for the database, through the context.

### Migrations
Migrations are place in the data folder/project, in a migrations folder. The migration file contains both up and down for the current migration. They are named as such:
```
<date (ddMMyyyy)><Unique_Identifier>_<name (PascalCase)>.cs
```
Example:

```
20240226114905_InitialCreate.cs
```
