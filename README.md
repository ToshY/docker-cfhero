<h1 align="center"> 🕵 docker-cfhero </h1>

<div align="center">
    <img src="https://img.shields.io/github/actions/workflow/status/toshy/docker-cfhero/security.yml?branch=main&label=Security%20check" alt="Security check" />
    <br /><br />
    <div>A <a href="https://ghcr.io/toshy/docker-cfhero">docker image</a> for <a href="https://github.com/musana/CF-Hero">CF-Hero</a>.</div>
</div>

> [!IMPORTANT]
> This repository automatically builds a docker images for [CF-Hero](https://github.com/musana/CF-Hero) on new releases. Bugs, questions or other issues that are related to [CF-Hero](https://github.com/musana/CF-Hero) functionality, and not related to the docker image, will be closed.

## 📝 Quickstart

1. Create a domain list, e.g. `domains.txt`.

```text
https://example.com
https://example.info
```

2. Run the `docker` command.

```shell
docker run --rm -i ghcr.io/toshy/docker-cfhero:latest < domains.txt
```

3. Check output.

> [!WARNING]
> If you see no (valuable) output, consider creating a bug report with reproducable examples in the [CF-Hero](https://github.com/musana/CF-Hero/issues) repository.

## ❕ License

This repository comes with a [MIT license](./LICENSE).
