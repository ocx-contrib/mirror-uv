r_version = ocx.run("uv", "--version")
expect.ok(r_version)
expect.eq(r_version.exit_code, 0)
expect.contains(r_version.stdout, "uv ")

r_help = ocx.run("uv", "--help")
expect.eq(r_help.exit_code, 0)
expect.contains(r_help.stdout, "extremely fast Python package")

r_cache = ocx.run("uv", "cache", "dir")
expect.eq(r_cache.exit_code, 0)
expect.true(len(r_cache.stdout) > 0)
