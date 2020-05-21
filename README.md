# Peatio - an open-source crypto currency exchange

[![Build Status](https://ci.nexbitio.work/api/badges/nexbitio/peatio/status.svg)](https://ci.nexbitio.work/nexbitio/peatio)
[![Telegram Chat](https://cdn.rawgit.com/Patrolavia/telegram-badge/8fe3382b/chat.svg)](https://t.me/peatio)

## [Peatio](https://www.nexbit.io) Introduction

Peatio is a free and open-source crypto currency exchange implementation with the Rails framework.
This is a fork of Peatio designed for micro-services architecture. We have simplified the code
in order to use only Peatio API with external frontend and server components.

## Getting Started

Rubykube is a container distribution, the fastest way to install the full stack is using [nDAX](https://github.com/nexbitio/ndax)

```
# To install
git clone https://github.com/nexbitio/ndax.git
# Follow the README instructions
```

To build your own exchange you should now run Peatio as a backend instead of forking the repository,
and extend it using other microservices such as [Barong](https://www.github.com/rubykube/barong).

## Mission

Our mission is to build an open-source crypto currency exchange with a high performance trading engine and incomparable security. We are moving toward dev/ops best practices of running an enterprise grade exchange.

We provide webinar or on site training for installing, configuring and administration best practices of Peatio.
Feel free to contact us for joining the next training session: [NEXBIT.IO](https://www.nexbit.io)

Help is greatly appreciated, feel free to submit pull-requests or open issues.

## Things You Should Know

**RUNNING AN EXCHANGE IS HARD.**

This repository is not a turn key solution and will require engineering and design of security process by your company, with or without our assistance. This repository is one component among many we recommend using for composing an enterprise grade exchange. It is highly recommended to deploy a UAT environment and build automated tests for your needs, including Functional tests, Smoke tests and Security vulnerability scans. You may not need to have an active developer on Peatio source code, however, we recommend the following team setup: 1 dev/ops, 3 frontend developers (react / angular), 2 QA engineers, 1 Security Officer.

**SECURITY KNOWLEDGE IS A REQUIREMENT.**

Peatio cannot protect your customers if you leave your admin password 1234567, or open sensitive ports to public internet. No one can. Running an exchange is a very risky task because you're dealing with money directly. If you don't know how to make your exchange secure, hire an expert.

You must know what you're doing, there's no shortcut. Please get prepared before you continue:

* Rails knowledge
* Security knowledge
* Cloud and Linux administration
* Docker and Kubernetes administration
* Micro-services and OAuth 2.0

## Features

* Designed as high performance crypto currency exchange
* Built-in high performance matching-engine
* Built-in multiple wallet support (e.g. deposit, hot, warm and cold)
* Built-in [plugable coin API](docs/coins/development.md)
* Build-in Management API - server-to-server API with high privileges
* Build-in RabbitMQ Event API
* Usability and scalability
* Websocket API and high frequency trading support
* Support multiple digital currencies (e.g. Bitcoin, Litecoin, Ethereum, Ripple etc.)
* Support ERC20 Tokens
* API endpoint for FIAT deposits or payment gateways.
* Powerful admin dashboard and management tools
* Highly configurable and extendable
* Industry standard security out of box
* Maintained by [NEXBIT.IO](https://www.nexbit.io)
* [KYC Verification](http://en.wikipedia.org/wiki/Know_your_customer) provided by [Barong](https://www.github.com/rubykube/barong)

## Contribute

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to contribute
issues, fixes, and patches to this project.

## Getting Started

We advice to use [minimalistic environment](#minimalistic-local-development-environment-with-docker-compose) if you want to develop only Peatio and don't touch processes which interact with other components.

Otherwise we advice to use [microkube based environment](#local-development-environment-with-microkube)

### Minimalistic local development environment with docker-compose:

#### Prerequisites
* [Docker](https://docs.docker.com/install/) installed
* [Docker compose](https://docs.docker.com/compose/install/) installed
* Ruby 2.6.2
* Rails 5.2.3+

## Installation

### Local development without microkube

1. Set up initial configuration `./bin/setup`
2. Start peatio daemons `god -c lib/daemons/daemons.god`
3. Add this to your `/etc/hosts`:
```
127.0.0.1 www.app.local
127.0.0.1 peatio.app.local
127.0.0.1 barong.app.local
```
4. Start rails server `JWT_PUBLIC_KEY=$(cat config/secrets/rsa-key.pub| base64 -w0) rails s -b 0.0.0.0` 
(`base64 -b0` for macOS)




#### Prerequisites
* [Docker](https://docs.docker.com/install/) installed
* [Docker compose](https://docs.docker.com/compose/install/) installed

## API

You can interact with Peatio through API:

* Account, Market & Public API v2
* Management API v2
* Websocket API
* Event API (AMQP)

## Getting Involved
We want to make it super-easy for Peatio users and contributors to talk to us and connect with each other, to share ideas, solve problems and help make Peatio awesome. Here are the main channels we're running currently, we'd love to hear from you on one of them:
### GitHub
Peatio issues

If you spot a bug, then please raise an issue in our main GitHub project (rubykube/peatio); likewise, if you have developed a cool new feature or improvement in your Rubykube Peatio fork, then send us a pull request!
If you want to brainstorm a potential new feature, then the Rubykube Discourse Forum (see above) is probably a better place to start.

### Email
hello@nexbit.io

If you want to talk directly to us (e.g. about a commercially sensitive issue), email is the easiest way.

## Getting Support and Customization

If you need help with running/deploying/customizing Peatio,
you can contact us on [NEXBIT.IO](https://www.nexbit.io).

Contact us by email: [hello@nexbit.io](mailto:hello@nexbit.io)

## License

Peatio is released under the terms of the [MIT license](http://peatio.mit-license.org).

## What is Peatio?

[Peatio](http://en.wikipedia.org/wiki/Pixiu) (Chinese: 貔貅) is a Chinese mythical hybrid creature
considered to be a very powerful protector to practitioners of Feng Shui.

**[This illustration copyright for Peatio Team]**

![logo](public/peatio.png)
