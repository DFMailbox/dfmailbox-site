# Instance communication
DFMailbox is made to have instances that work together with other instances to avoid centralization.

This explanation is made for the average DiamondFire developer.
Some links were added for concepts that aren't used in DiamondFire.
These links are here to simply explain a concept on the surface level.

# Overview
Every DFMailbox instance has an [ed25519](https://www.youtube.com/watch?v=NF1pwjL9-DE) public and private key.
The public key is used as an identifier for an instance while the private key is used to ensure authenticity.

# Identification
In this explanation, there will be two instances named `A` and `B`.
Here, a user of `A` would like to be able to talk to `B`.

[signing challenge](https://en.wikipedia.org/wiki/Challenge%E2%80%93response_authentication)

1. The user will `POST /v0/instance` to `A` with
    1. `server_key` - `B`'s ed25519 public key
    2. `host` - `B`'s host (ex. `dfm.dftools.dev`)
2. When `A` receives the request, it sends a request to `B` at `POST /v0/federation/instance` with
    1. `challenge` - A host + UUID  for `B`
    2. `server_key` - `B`'s public key
    3. `host` - `A`'s host
3. When `B` receives the request, it completes the challenge creating a `signature`. 
    It then sends a request to `A` at `GET /v0/federation/instance` with
    - `challenge` - A challenge for `A`

    The request to `A` responds with
    1. `server_key` - `B`'s public key
    2. `signature` - Solved challenge made for `B`

    






