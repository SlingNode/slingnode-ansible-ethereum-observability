# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).



## [0.4.0] - 2023-05-20

### Changed

- Parameterized Prometheus Service Discover file names
- Lowered specs for Molecule test agent instances
- Added test to verify that node exporter metrics from agents are present

### Fixed

- Removed duplicated 'restart' key from dc-observability.yml template


## [0.3.0] - 2023-05-19

### Changed

- Filebeat now uses a named volume for registry data

### Fixed

- prepare_with_clients.yml Molecule playbook was deploying Observability role instead of the ehteruem role


## [0.2.0] - 2023-05-14

### Changed

- Added docker container hardening


## [0.1.1] - 2023-05-14

### Fixed

- Set tags for docker images


## [0.1.0] - 2023-05-09

### Added

- Initial release
