# cron-pgsql

`cron-pgsql` 是 `cron` 模块的 `pgsql` 驱动。

## 安装

```bash
go get github.com/infrago/cron@latest
go get github.com/infrago/cron-pgsql@latest
```

## 接入

```go
import (
    _ "github.com/infrago/cron"
    _ "github.com/infrago/cron-pgsql"
    "github.com/infrago/infra"
)

func main() {
    infra.Run()
}
```

## 配置示例

```toml
[cron]
driver = "pgsql"
```

## 公开 API（摘自源码）

- `func (d *pgsqlDriver) Connection(inst *cron.Instance) (cron.Connection, error)`
- `func (c *pgsqlConnection) Open() error`
- `func (c *pgsqlConnection) Close() error`
- `func (c *pgsqlConnection) Add(name string, job cron.Job) error`
- `func (c *pgsqlConnection) Enable(name string) error`
- `func (c *pgsqlConnection) Disable(name string) error`
- `func (c *pgsqlConnection) Remove(name string) error`
- `func (c *pgsqlConnection) List() (map[string]cron.Job, error)`
- `func (c *pgsqlConnection) AppendLog(log cron.Log) error`
- `func (c *pgsqlConnection) History(jobName string, offset, limit int) (int64, []cron.Log, error)`
- `func (c *pgsqlConnection) Lock(key string, ttl time.Duration) (bool, error)`

## 排错

- driver 未生效：确认模块段 `driver` 值与驱动名一致
- 连接失败：检查 endpoint/host/port/鉴权配置
