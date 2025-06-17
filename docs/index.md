# DFMailbox
> A Decentralized way to pass messages to other DiamondFire plots 

## Getting started
To get started using DFMailbox, go to [Getting Started](./setup)

## Links

- [GitHub repo](https://github.com/DynamicCake/dfmailbox)
- [OpenAPI specification](/scalar)
- [Public instance](https://api.dfmailbox.dev)
- [DFMailman instance](https://dfmm.dfmailbox.dev)


There can be many instances of DFMailbox that work together to transport messages.
Every plot has an owning instance and the owning instance has stores the mailbox.
The plot will then identify itself to other instances providing the owning instance's public key.
The plot can send JSON messages to other plots that trust this plot.
A cross instance message can be sent from one plot to another by using the /federation endpoints.

Made by DynamicCake
