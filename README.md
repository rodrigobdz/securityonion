# Security Onion Docker image

> Docker image with Security Onion pre-installed on Ubuntu 16.04

Available on Docker Hub as [rodrigobdz/securityonion](https://hub.docker.com/r/rodrigobdz/securityonion)

## Requirements

- Run setup wizard

  ```sh
  sudo sosetup
  ```

## Usage

- Test in a temporary container

  ```sh
  docker run --rm --interactive --tty rodrigobdz/securityonion:latest bash --login
  ```

## Related Projects

- [rodrigobdz/ubuntu](https://hub.docker.com/r/rodrigobdz/ubuntu) Base Docker image for this image

## Credits

- [minimal-readme](https://github.com/rodrigobdz/minimal-readme)

## License

[MIT](LICENSE) © [rodrigobdz](https://rodrigobdz.github.io/).
