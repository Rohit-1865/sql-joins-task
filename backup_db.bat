@echo off
pg_dump -U postgres -d postgres -F c -f postgres_backup.backup
pause
