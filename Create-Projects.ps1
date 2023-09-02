Write-Host "`nStep 1: Creating a New Solution`n"

dotnet new sln
dotnet new gitignore


Write-Host "`nStep 2: Preparing Projects from Templates`n"

# Common class library

dotnet new classlib --name "Northwind.Common.Domains" --framework "net6.0"
dotnet sln add "Northwind.Common.Domains"

dotnet new nunit --name "Northwind.Common.Testing" --framework "net6.0"
dotnet sln add "Northwind.Common.Testing"

dotnet add "Northwind.Common.Testing" reference "Northwind.Common.Domains"

# MVC application

dotnet new mvc --name "Northwind.App.MVC" --framework "net6.0" --auth "Individual"
dotnet sln add "Northwind.App.MVC"

dotnet add "Northwind.App.MVC" reference "Northwind.Common.Domains"


# Backends for Database Providers

# 1) SQLite

dotnet new webapi --name "Northwind.Backend.SQLite.WebAPI" --framework "net6.0"
dotnet sln add "Northwind.Backend.SQLite.WebAPI"

dotnet new classlib --name "Northwind.Backend.SQLite.DataContext" --framework "net6.0"
dotnet sln add "Northwind.Backend.SQLite.DataContext"

dotnet new classlib --name "Northwind.Backend.SQLite.EntityModels" --framework "net6.0"
dotnet sln add "Northwind.Backend.SQLite.EntityModels"

dotnet new nunit --name "Northwind.Backend.SQLite.UnitTests" --framework "net6.0"
dotnet sln add "Northwind.Backend.SQLite.UnitTests"

dotnet add "Northwind.Backend.SQLite.EntityModels" reference "Northwind.Common.Domains"
dotnet add "Northwind.Backend.SQLite.DataContext" reference "Northwind.Backend.SQLite.EntityModels"
dotnet add "Northwind.Backend.SQLite.UnitTests" reference "Northwind.Backend.SQLite.DataContext"
dotnet add "Northwind.Backend.SQLite.WebAPI" reference "Northwind.Backend.SQLite.DataContext"
dotnet add "Northwind.Backend.SQLite.WebAPI" reference "Northwind.Backend.SQLite.EntityModels"

# 2) MS SQL Server

dotnet new webapi --name "Northwind.Backend.MSSQLServer.WebAPI" --framework "net6.0"
dotnet sln add "Northwind.Backend.MSSQLServer.WebAPI"

dotnet new classlib --name "Northwind.Backend.MSSQLServer.DataContext" --framework "net6.0"
dotnet sln add "Northwind.Backend.MSSQLServer.DataContext"

dotnet new classlib --name "Northwind.Backend.MSSQLServer.EntityModels" --framework "net6.0"
dotnet sln add "Northwind.Backend.MSSQLServer.EntityModels"

dotnet new nunit --name "Northwind.Backend.MSSQLServer.UnitTests" --framework "net6.0"
dotnet sln add "Northwind.Backend.MSSQLServer.UnitTests"

dotnet add "Northwind.Backend.MSSQLServer.EntityModels" reference "Northwind.Common.Domains"
dotnet add "Northwind.Backend.MSSQLServer.DataContext" reference "Northwind.Backend.MSSQLServer.EntityModels"
dotnet add "Northwind.Backend.MSSQLServer.UnitTests" reference "Northwind.Backend.MSSQLServer.DataContext"
dotnet add "Northwind.Backend.MSSQLServer.WebAPI" reference "Northwind.Backend.MSSQLServer.DataContext"
dotnet add "Northwind.Backend.MSSQLServer.WebAPI" reference "Northwind.Backend.MSSQLServer.EntityModels"

# 3) PostgreSQL

dotnet new webapi --name "Northwind.Backend.PostgreSQL.WebAPI" --framework "net6.0"
dotnet sln add "Northwind.Backend.PostgreSQL.WebAPI"

dotnet new classlib --name "Northwind.Backend.PostgreSQL.DataContext" --framework "net6.0"
dotnet sln add "Northwind.Backend.PostgreSQL.DataContext"

dotnet new classlib --name "Northwind.Backend.PostgreSQL.EntityModels" --framework "net6.0"
dotnet sln add "Northwind.Backend.PostgreSQL.EntityModels"

dotnet new nunit --name "Northwind.Backend.PostgreSQL.UnitTests" --framework "net6.0"
dotnet sln add "Northwind.Backend.PostgreSQL.UnitTests"

dotnet add "Northwind.Backend.PostgreSQL.EntityModels" reference "Northwind.Common.Domains"
dotnet add "Northwind.Backend.PostgreSQL.DataContext" reference "Northwind.Backend.PostgreSQL.EntityModels"
dotnet add "Northwind.Backend.PostgreSQL.UnitTests" reference "Northwind.Backend.PostgreSQL.DataContext"
dotnet add "Northwind.Backend.PostgreSQL.WebAPI" reference "Northwind.Backend.PostgreSQL.DataContext"
dotnet add "Northwind.Backend.PostgreSQL.WebAPI" reference "Northwind.Backend.PostgreSQL.EntityModels"

# 4) MySQL

dotnet new webapi --name "Northwind.Backend.MySQL.WebAPI" --framework "net6.0"
dotnet sln add "Northwind.Backend.MySQL.WebAPI"

dotnet new classlib --name "Northwind.Backend.MySQL.DataContext" --framework "net6.0"
dotnet sln add "Northwind.Backend.MySQL.DataContext"

dotnet new classlib --name "Northwind.Backend.MySQL.EntityModels" --framework "net6.0"
dotnet sln add "Northwind.Backend.MySQL.EntityModels"

dotnet new nunit --name "Northwind.Backend.MySQL.UnitTests" --framework "net6.0"
dotnet sln add "Northwind.Backend.MySQL.UnitTests"

dotnet add "Northwind.Backend.MySQL.EntityModels" reference "Northwind.Common.Domains"
dotnet add "Northwind.Backend.MySQL.DataContext" reference "Northwind.Backend.MySQL.EntityModels"
dotnet add "Northwind.Backend.MySQL.UnitTests" reference "Northwind.Backend.MySQL.DataContext"
dotnet add "Northwind.Backend.MySQL.WebAPI" reference "Northwind.Backend.MySQL.DataContext"
dotnet add "Northwind.Backend.MySQL.WebAPI" reference "Northwind.Backend.MySQL.EntityModels"

# 5) OracleDatabase

dotnet new webapi --name "Northwind.Backend.OracleDatabase.WebAPI" --framework "net6.0"
dotnet sln add "Northwind.Backend.OracleDatabase.WebAPI"

dotnet new classlib --name "Northwind.Backend.OracleDatabase.DataContext" --framework "net6.0"
dotnet sln add "Northwind.Backend.OracleDatabase.DataContext"

dotnet new classlib --name "Northwind.Backend.OracleDatabase.EntityModels" --framework "net6.0"
dotnet sln add "Northwind.Backend.OracleDatabase.EntityModels"

dotnet new nunit --name "Northwind.Backend.OracleDatabase.UnitTests" --framework "net6.0"
dotnet sln add "Northwind.Backend.OracleDatabase.UnitTests"

dotnet add "Northwind.Backend.OracleDatabase.EntityModels" reference "Northwind.Common.Domains"
dotnet add "Northwind.Backend.OracleDatabase.DataContext" reference "Northwind.Backend.OracleDatabase.EntityModels"
dotnet add "Northwind.Backend.OracleDatabase.UnitTests" reference "Northwind.Backend.OracleDatabase.DataContext"
dotnet add "Northwind.Backend.OracleDatabase.WebAPI" reference "Northwind.Backend.OracleDatabase.DataContext"
dotnet add "Northwind.Backend.OracleDatabase.WebAPI" reference "Northwind.Backend.OracleDatabase.EntityModels"


Write-Host "`nStep 3: Displaying Projects from the Solution`n"

dotnet sln list
