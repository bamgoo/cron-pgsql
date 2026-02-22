module github.com/bamgoo/cron-pgsql

go 1.25.3

require (
	github.com/bamgoo/bamgoo v0.0.0-00010101000000-000000000000
	github.com/bamgoo/cron v0.0.0-00010101000000-000000000000
	github.com/jackc/pgx/v5 v5.7.6
)

replace github.com/bamgoo/bamgoo => ../bamgoo

replace github.com/bamgoo/cron => ../cron
