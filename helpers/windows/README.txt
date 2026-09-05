WoW 3.4.3 (WotLK Classic) - client data extractors
==================================================

These tools read your World of Warcraft 3.4.3 client and produce the data
files a TrinityCore 3.4.3 server needs in order to start.

You do NOT need Docker, a compiler, or anything else to run these.


HOW TO USE
----------

1. Extract this whole zip into your WoW 3.4.3 client folder - the folder
   that contains Wow.exe and a "Data" subfolder.

   It should end up looking like:

       C:\Games\WoW 3.4.3\
           Wow.exe
           Data\
           mapextractor.exe
           vmap4extractor.exe
           vmap4assembler.exe
           mmaps_generator.exe
           Extract-Data.bat        <-- you run this

2. Double-click Extract-Data.bat and confirm.

3. Wait. This takes 1-4 hours and needs ~25 GB of free space. The last
   step (mmaps_generator) is by far the slowest - it is normal for it to
   sit at high CPU for hours. You can close the window with Ctrl+C and
   start over later.

4. When it says "Done.", copy these six folders

       dbc   maps   vmaps   mmaps   gt   cameras

   into the "data" folder of your server - the one next to
   docker-compose.yml. So you get server\data\dbc, server\data\maps, etc.

5. The worldserver notices the new data within 60 seconds and starts.
   If you don't want to wait, run:

       docker compose restart worldserver


NOTES
-----

* All six folders matter. The server refuses to start without dbc, maps,
  vmaps, mmaps and gt. (cameras is only used for cinematics, but it is
  tiny, so just copy it too.)

* These are for a 3.4.3 WotLK CLASSIC client. They do not work with a
  3.3.5a client - those use MPQ archives, and the tools will tell you so.

* Running the tools by hand is fine too, but the ORDER and the ARGUMENTS
  matter:

      mapextractor.exe
      vmap4extractor.exe
      vmap4assembler.exe Buildings vmaps
      mmaps_generator.exe

  In particular "vmap4assembler.exe ." does NOT work: vmap4extractor
  writes its raw output into the "Buildings" folder, and the assembler
  has to be pointed at it. Getting this wrong produces an empty vmaps
  folder and the server then dies with "Unable to load map and vmap data
  for starting zones".

* The "Buildings" folder is a ~10 GB intermediate. Extract-Data.bat
  deletes it when it is finished; if you run the tools by hand you can
  delete it yourself afterwards.
