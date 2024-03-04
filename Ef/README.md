
## EF - Project

In the entity framework project, 3 core entities has been introduced, with a data project to setup an SQLite database. There is an empty repo class, made for interaction for the database, through the context.

### Migrations
Migrations are place in the data folder/project, in a migrations folder. The migration file contains both up and down for the current migration. They are named as such:
```
<date (ddMMyyyyHHmmSS)>_<name (PascalCase)>.cs
```
Example:

```
20240226114905_InitialCreate.cs
```

### Run Migrations
To migrate the database to the newest migration, run the following command: 

To Update : 
```
dotnet ef database update
```

To run the migrations to a specific migration you can use the specific migration name - this can also be used to revert migrations, to target the migration run the following command: 

To Update : 
```
dotnet ef database update 20240226114905_InitialCreate
```

To Remove the last migration used AND DELETE THE FILE: 
```
dotnet ef migrations remove --force
```

### References
EF Core documentation: https://learn.microsoft.com/en-us/ef/core/


## Authors

- [@Jan Wohlgehagen](https://github.com/JanWohlgehagen)
- [@Simon Tved Nielsen](https://github.com/tadiaki)
- [@Mikkel Theut Meier](https://github.com/theut94)

