<!-- 


$env:Path += ";C:\Program Files\PostgreSQL\18\bin"
$env:PGPORT = "5433"




[Environment]::SetEnvironmentVariable("Path", [Environment]::GetEnvironmentVariable("Path", "User") + ";C:\Program Files\PostgreSQL\18\bin", "User")
[Environment]::SetEnvironmentVariable("PGPORT", "5433", "User") -->