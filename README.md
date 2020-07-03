# Security Onion Docker image

> [WIP] Docker image with Security Onion pre-installed on Ubuntu 16.04

Available on Docker Hub as [rodrigobdz/securityonion](https://hub.docker.com/r/rodrigobdz/securityonion)

## Requirements

- Run setup wizard

  ```sh
  sudo sosetup
  ```

- Follow the [Disabling Desktop](https://securityonion.readthedocs.io/en/latest/desktop.html) guide

- Follow the [After Installation](https://securityonion.readthedocs.io/en/latest/post-installation.html) guide

## Usage

- Test in a temporary container

  ```sh
  docker run --rm --interactive --tty rodrigobdz/securityonion:latest bash --login
  ```

## Known Issues

- Systemctl is not configured by default in Docker image.
  - Possible solutions: [[1]](https://github.com/moby/moby/issues/30723#issuecomment-365927679), [[2]](https://hub.docker.com/r/kevincoakley/ubuntu16.04-systemd/dockerfile/), [[3]](https://hub.docker.com/r/jrei/systemd-ubuntu/dockerfile)

## Related Projects

- [rodrigobdz/ubuntu](https://hub.docker.com/r/rodrigobdz/ubuntu) Base Docker image for this image

## Credits

- [minimal-readme](https://github.com/rodrigobdz/minimal-readme)

## License

[MIT](LICENSE) © [rodrigobdz](https://rodrigobdz.github.io/).
