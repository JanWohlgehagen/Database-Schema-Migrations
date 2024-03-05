
# Entity Framework Migrations

In the entity framework project, 3 core entities has been introduced, with a data project to setup an SQLite database. There is an empty repo class, made for interaction for the database, through the context.

## Setting up the project

The project is a dotnet 7 project. You'll need to make sure everything runs in dotnet 7 for it to work. Therefore you might need to download dotnet 7 specifically. 

### Cloning the project

To clone the project run the following command:
```
git clone https://github.com/JanWohlgehagen/Database-Schema-Migrations/tree/ef-migrations/master
```
### Building the project
Navigate to the Ef/Core folder and run the following command:
```
dotnet build 
```

There is no executeable files, so the project is not meant to be run. From here on, you can test the different migrations we have implemented, following the below guide.

## Entities
Migrations are place in the data folder/project, in a migrations folder. The migration file contains both up and down for the current migration. They are named as such:
```
<date (ddMMyyyyHHmmSS)>_<name (PascalCase)>.cs
```
Example:

```
20240226114905_InitialCreate.cs
```

## Run Migrations
To migrate the database to the newest migration, run the following command: 

To Update : 
```
dotnet ef database update
```

To migrate to a specific migration you can use the specific migration name, to target the migration run the following command:

To Update : 
```
dotnet ef database update 20240226114905_InitialCreate
```

## Run Rollbacks

To revert to a specific migration you can use the specific migration name, to target the migration run the following command:

To Update : 
```
dotnet ef database update 20240226114905_InitialCreate
```

To revert ALL migrations, you can run the following command: 
```
dotnet ef database update 0
```

To Remove the last migration used AND DELETE THE FILE: 
```
dotnet ef migrations remove --force
```

## References
EF Core documentation: https://learn.microsoft.com/en-us/ef/core/
Dotnet 7 download: https://dotnet.microsoft.com/en-us/download/dotnet/7.0

## Dependancies
All dependancies for the project can be downloaded with the Nuget package manager.

* Microsoft.EntityFrameworkCore version 7.0.16
https://www.nuget.org/packages/Microsoft.EntityFrameworkCore/7.0.16

* Microsoft.EntityFrameworkCore.Sqlite version 7.0.16
https://www.nuget.org/packages/Microsoft.EntityFrameworkCore.Sqlite/

* Microsoft.EntityFrameworkCore.tools version 7.0.16
https://www.nuget.org/packages/Microsoft.EntityFrameworkCore.Tools

## Authors

- [@Jan Wohlgehagen](https://github.com/JanWohlgehagen)
- [@Simon Tved Nielsen](https://github.com/tadiaki)
- [@Mikkel Theut Meier](https://github.com/theut94)

