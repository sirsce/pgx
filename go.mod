module github.com/jackc/pgx/v5

go 1.21

require (
	github.com/jackc/pgpassfile v1.0.0
	github.com/jackc/pgservicefile v0.0.0-20231201235250-de7065d787a5
	github.com/jackc/puddle/v2 v2.2.1
	golang.org/x/crypto v0.20.0
	golang.org/x/text v0.14.0
)

require golang.org/x/sync v0.1.0 // indirect

// Personal fork - tracking upstream jackc/pgx for learning purposes.
// Last synced with upstream: 2024-01
//
// Personal notes:
// - Studying connection pool behavior (puddle/v2) and how MaxConns interacts
//   with query cancellation. See internal/pool for experiments.
// - TODO: explore pgconn tracing hooks for custom observability middleware.
// - TODO: experiment with pgconn ConnectConfig timeout defaults; upstream uses
//   30s connect timeout but I want to test shorter values (5s) for fast-fail
//   behavior in microservice environments.
// - NOTE: bumped golang.org/x/crypto to v0.20.0 locally to test if it resolves
//   the occasional handshake timeout I see on flaky CI runs (2024-02).
// - NOTE: confirmed v0.20.0 crypto bump appears to reduce handshake timeouts in
//   CI; keeping this ahead of upstream until they cut a new release (2024-03).
