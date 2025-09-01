Very small README

I was always frustrated playing TidalCycles that before playing you need to make quite some steps (even without installation, just prepairing to play): open SC, boot SuperDirt, open TextEditor (in my case it was Pulsar), boot Tidal there. All together takes usually 5-6 minutes, could be optimised with fast movements to three, but still. And I was, honestly, haiting Pulsar, because it is quite annoying Text Editor sometimes.

So I decided to collect all neccessary boot files into a folder and write a smal bash script that will start everything and create several windows for better navigation. All together takes about 5-7 seconds and your double-click.

You need a regularly installed TidalCycles: haskell, tidal package for it, SuperCollider, all Quarks.

Just drop the whole repo into the Application folder. The script looks into the directory: /Application/tidal-nano. Please, notice, it is not user's root directory, but regular Applications.

Some notes:
- multi-line thingy you can make with this haskell syntax.
~~~
    :{ 
        d1 $ s "bd!4"
        #pan random
    :}
~~~
- the environment automatically loading reference (in process) and snippets.txt. The last one you can overwrite with whatever you want. Unfortunately you can't evaluate from there. I tried to use vim for that, but during evaluation it makes an annoying allert sound. Something that I will try to fix in the future
