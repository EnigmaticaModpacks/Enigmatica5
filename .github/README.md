# Enigmatica 5

This is the official repository and issue-tracker for the modpack Enigmatica 5, for Minecraft 1.15.1

### Table of Contents
* [Testing](#testing)
* [Setup](#setup)
  * [Windows / Mac](#windows--mac)
  * [Linux](#linux)
  * [Server Automation](#server-automation)
* [Links](#links)

## Testing
If you would like to help test Enigmatica 5, please give me a shout on Discord.

There are a few things I would like testers to consider/look for:

* Bugs
* Things you find boring/tedious
* Things that need small optimizations, such as advancement text and textures.

I would also appreciate if you let me know what you think of the gameplay and why, especially if you didn't like it :)

Note: You do not have to use the below setup method, you can use the available files from CurseForge or Discord, however those are not updated as frequently as this repository.

# Setup 
### For Contributors, Testers and Server Admins
Follow these steps to setup your workspace/server:

## Windows / Mac
1) Download the [Twitch App](https://www.twitch.tv/downloads) if you haven't already.
2) Fork and clone the Enigmatica 5 repository to the Instances folder of the Twitch App, the default path is `C:\Users\User\Documents\Twitch\Minecraft\Instances`
3) Double click the script `setup.bat` to setup InstanceSync. It is found in the `development` folder.
4) Pull.
5) Open the Twitch App, go to Mods > Minecraft, and you should see Enigmatica 5. If you already had Twitch App open, restart it.

You're done!

## Linux
#### Setup MultiMC Instance
1) Download latest version of [MultiMC](https://multimc.org/#Download) if you haven't already.
2) Open MultiMC.
3) Click Add Instance, choose Twitch, search for Enigmatica 5 and click ok.
4) Click Edit Instance (right hand side), choose Settings and change the settings according to [this](https://gist.github.com/NillerMedDild/40b4992b7a3e5e653a353fe1d45f2185)
5) Now you should be able to launch!

#### Repository Setup
6) Fork and clone the Enigmatica 5 repository
7) Open the folder of the MultiMC Instance you made (step 1-5), and go into the .minecraft folder - Open a Terminal and use the following commands:
```
git init                                           # Initialize git in folder
git remote add origin URLToYourEnigmatica5Fork     # Set remote origin to your Enigmatica 5 fork
git remote -v                                      # Verify remote
git fetch
git pull
```
8) Now double click the script `setup.sh` to setup InstanceSync. It is found in the `development` folder.
9) One more `git pull`

You're done!

## Server Automation
*Note: You only have to do this setup once, afterwards you simply need to do step 8.*
1) Clone the Enigmatica 5 repository to an empty folder.
2) Double click the script `setup.bat` to setup InstanceSync. It is found in the `development` folder.
3) Open a command line, and navigate to the folder.
4) Use the command `git pull`
5) Navigate to the folder `development/include-in-server-files`
6) Open the file `settings.cfg` and change `MAX_RAM=4G` to the amount you wish to allocate.
7) Copy all files from the folder `development/include-in-server-files` into the root.
8) Run `remove-client-mods` to ensure that no client-side mods are on the server.
9) Double clicking `update-server.bat` will now update the modpack.

Using the `update-server` script will reset changes you've made to all files tracked by the repository.

### Alternatives
It is possible to setup a development instance for Enigmatica 5 in other ways, for example running it through the .Minecraft folder.

## Links

* [CurseForge](https://www.curseforge.com/minecraft/modpacks/enigmatica5)

* [Discord](https://discord.gg/enigmatica)
