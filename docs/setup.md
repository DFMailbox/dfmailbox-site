# Setup
> NOTE: This is for the pre-alpha version. Even though things are kinda stabilized to the point a guide can be written, things are subject to change

DFMailbox is only a protocol, and to use it you need to find an instance that runs it.
Beware, the owner of the instance has access to your mailbox and can send mail as you.

> As the author of DFMailbox, I do run an instance at `api.dfmailbox.dev`, but I do not wish that everyone uses that instance.
I wish that if the instance falls, not everything wont go up in flames.
If you know someone else that runs an instance and you trust that person, please use their instance instead.

Once you have found an instance, go to your instance's DFMailman instance and input the information.
If your instance does not have a DFMailman instance, you may use the `dfmailbox.dev` one [here](https://dfmm.dftools.dev).

*Breaking the immersion here, yes it is ugly. Yes, [you can fix it if you want](https://github.com/DynamicCake/dfmailman)*
![An image showing a crude version of DFMailman](/assets/dfmailman.png)

As of pre-alpha, DFMailman can only make templates templates.

1. Make sure you are running codeclient
2. Fill out your player uuid which you can find via the API:
<https://api.minecraftservices.com/minecraft/profile/lookup/name/Notch> (replace 'Notch' with your name)
3. If your instance isn't `api.dftools.dev`, replace this
4. Press `fetch` to get the `public_key`
5. Generate and get the template in game
6. Place down the template and `/play`
7. Copy the API key

> Here you would enter the api key into DFMailman and get some cool visuals...
Unfortunately that isn't a thing unless... [you contribute](https://github.com/DynamicCake/dfmailman)?

Enter the api key into your client
