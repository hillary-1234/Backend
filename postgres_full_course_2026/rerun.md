<!-- 


$env:Path += ";C:\Program Files\PostgreSQL\18\bin"
$env:PGPORT = "5433"

PS C:\Users\user\BACKEND\postgres_full_course_2026>  psql -U postgres -d postgres -f part3/01_reset_and_seed_relationships.sql


[Environment]::SetEnvironmentVariable("Path", [Environment]::GetEnvironmentVariable("Path", "User") + ";C:\Program Files\PostgreSQL\18\bin", "User")
[Environment]::SetEnvironmentVariable("PGPORT", "5433", "User")