# Shattered Ascension FAQ
### Version 6, 2024-??-??
***By Cyrusa***  
***Email for feedback: cyrusa+ti3 (at) crans.org***  
***Credits to ThLunarian for the idea and the initial document this FAQ is based upon.***

> This FAQ aims at answering common rule questions, as well as covering complicated rule interactions in specific scenarios. 

> To get an url pointing to a specific part of this rulebook (to give to a friend for example), hover over a title and click on the link icon that will pop up on its left, then copy the new url of the webpage. This also works for internal links, simply click on them and copy the new url of the webpage.

## Categories

- [TableTop Simulator](#TableTopSimulator)
- [Strategy Cards](#StrategyCards)
- [Domain Counters](#DomainCounters)
- [Technologies](#Technologies)
- [Miscellaneous](#Miscellaneous)

-----

## TableTop Simulator<a name="TableTopSimulator"></a>  

#### There are two TableTop Simulator mod for Shattered Ascension, which one should I use?
<div>

On the steam workshop, you can find two Shattered Ascension mods for TableTop Simulator: the [standard one](https://steamcommunity.com/sharedfiles/filedetails/?id=478727953&searchtext=shattered+ascension) and the [nova one](https://steamcommunity.com/sharedfiles/filedetails/?id=744823163&searchtext=shattered+ascension). The short answer is that they are actually identical most of the time. There is only about a week of delay before an update to one of gets mirrored in the other. **The usual recommendation is to use the nova one** because it gets updated first, but there is nothing wrong with using the other. In fact, you should probably subscribe to both if you want to show your support.  


Long answer: PsiComa created the standard mod. Steam only allows the creator of a mod to update it. At the time when Cyrusa wrote scripts for it and tried a new table layout (which became the standard table layout used in both mods), there were so many updates it was more convenient to create a separate mod he could update himself: the nova one. Now when Cyrusa updates the scripts\*, he updates the nova mod, then PsiComa mirrors the update on the standard mod, usually not longer than a week after.

\**There is no issue with asset updates because both mods pull them from the same internet source.*
</div>

#### Why does no one ever draw the Sabotage Action Card in the TableTop Simulator mod?
<div>

Sabotage has been removed from the deck in the Tabletop Simulator mod. Testing has revealed that the card leads to unfun gameplay, as a very carefully sequenced turn which is reliant on one or more Action Cards can be randomly ruined with little effort. This produced an undesirable amount of variance, and so the card was removed. If you prefer to play with it, you can find it in the Assets bags near the bottom of the table, and re-add it to the deck.
</div>

## Strategy Cards<a name="StrategyCards"></a>  

#### Can my ships pickup the High Alert Token (from the Warfare Strategy Card) on their way?
<div>

**No**. The High Alert Token can only be moved by ships that start their movement in its system, and it follows them to their destination (it cannot be dropped on the way).
</div>

#### Can I use the secondary ability of the Diplomacy Strategy Card to annex a planet through a worldgate?
<div>

**No**. Worldgates do not make planets adjacent, they allow a form of special movement. See [Rulebook/Worldgates](http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/latest/TwilightImperium_ShatteredAscension_Rulebook.html#worldgates)
</div>

#### Can I use the secondary ability of Diplomacy to annex a planet containing a Leader but no units?
<div>

**No**. The secondary ability of Diplomacy requires the planet to be *empty*. By definition, a planet is empty if it contains no units or Leaders. See [Rulebook/Empty Planet](http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/latest/TwilightImperium_ShatteredAscension_Rulebook.html#empty-planet).
The situation is different if you have the [XenoPsychology](http://www.astralvault.net/games/SA/TTS/Misc/CascadingTechTreeDark_SA.jpg) technology, since it allows to annex a planet *"if no ground units remain on it"*, therefore ignoring Leaders, PDS and Space Docks.
</div>

#### I am producing units with the secondary ability of the Production Strategy Card. Can I use another effect\* to increase my production capacity beyond the limit of 3 set by the card?
<div>

**No**. The [secondary ability of Production](http://www.astralvault.net/games/SA/TTS/StrategyCards/xProduction.jpg) does not actually give you 3 production capacity, it lets you produce units at a Space Dock, but prevents you from using more than 3 production capacity in this build. Increasing your production capacity does not go around that. However, if your Space Dock provides less than 3 production capacity for some reason, you can use another effect to boost that number and then use 3 of them as per the limit set by the secondary ability of Production.

\**For example the [Transfabrication](http://www.astralvault.net/games/SA/TTS/Misc/CascadingTechTreeDark_SA.jpg) Technology.*
</div>

## Domain Counters<a name="DomainCounters"></a>  

#### If I take control of a planet containing an Alien Technology, and I choose the Nano Robotics technology, do I acquire that planet refreshed?
<div>

**No**, because Alien Technology is controlled as an Artifact. Control over Artifacts on planets is established at the end of actions. This means that at the time you take control of that planet, you do not yet control the Alien Technology and therefore do not benefit from Nano Robotics yet.  
However, Nano Robotics would repair your units right away, as that effect happens "at the end of your action" at the same time you take control of the Alien Technology.
</div>

#### Do units spawned by Domain Counters count as "enemy" units for objectives\*?
<div>

**No**, because units spawned by Domain Counters are **neutral**, not **enemy**. See [Rulebook/Allegiances](http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/latest/TwilightImperium_ShatteredAscension_Rulebook.html#Allegiances).

\**For example an objective like "This round I destroyed enemy units in two different systems".*
</div>

#### Can my PDS shoot before a space battle that was triggered by Domain Counters?
<div>

**No**. PDS only shoot (i.e. use their Space Cannon ability) during step 3) of Tactical Actions: [*Space Cannons Abilities*](http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/latest/TwilightImperium_ShatteredAscension_Rulebook.html#3-space-cannons-abilities). Domain Counters and Space Battles they cause are resolved either during step 2): *Movement* or 5): *Planetary Landings* (depending on whether they are in space or on a planet), so PDS do not get a chance to shoot since the neutral units from the Domain Counters do not exist during step 3) of the Tactical Action. See [Rulebook/Domain Counters](http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/latest/TwilightImperium_ShatteredAscension_Rulebook.html#domain-counters).
</div>

## Technologies<a name="Technologies"></a>  

#### If I have the Integrated Economy Technology, can I produce ground units on a Trade Station and place them on a ship in the system like Saar's floating Space Docks do?
<div>

**No**. Trade Stations are planets. The [production rule](http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/latest/TwilightImperium_ShatteredAscension_Rulebook.html#b-produce-units) says that if the producer is a planet, the produced units that are planet-based must be placed on the planet, but the [Trade Station rule](http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/latest/TwilightImperium_ShatteredAscension_Rulebook.html#trade-stations) says they cannot exist on it, so you cannot place them and therefore cannot produce them.
</div>

#### Can Ground Forces reanimated with Dacxive Animators be promoted to Shock Troop?
<div>

**No**, because only **surviving** Ground Forces can be promoted to Shock Troops after a won Invasion Combat. Reanimated Ground Forces are technically different units that did not participate to the Invasion Combat.
</div>

## Miscellaneous<a name="Miscellaneous"></a>  

#### Do artefacts count as technology specialties. For example for the Focused Secret Objective?
<div>

**No**. Artefacts have nothing to do with technology specialties. They do provide a similar effect of discounting by 1 the price of technologies of their colour, but they are not technology specialties. See [Rulebook/Artifacts](http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/latest/TwilightImperium_ShatteredAscension_Rulebook.html#artifacts).
</div>

#### What’s up with the Racial Objectives?
<div>

Testing revealed that human players\* do not have enough brain capacity to be able to track how close each opponent is to all three of their objectives, and so they have been removed from the default game setting in the Tabletop Simulator mod. They are available in the setup options; however, be aware that, because they have not been played with much, they have not been properly balanced and tested. To be clear this does not mean they are completely out of whack. It just means they are not as polished as the rest of Shattered Ascension.

\**Last time we checked, SA players are mostly comprised of humans and an otter.*
</div>

#### Do PDS shots count as combat rolls?
<div>

**Yes**. Per the definition, any time you roll a die and compare it to the combat value of the unit (6 for PDS) is a [Combat Roll](http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/latest/TwilightImperium_ShatteredAscension_Rulebook.html#CombatRoll).
</div>

#### What is the point for Shock Troops to have the "Commando" ability to capture installations since they capture them anyway with their "Capture Installations" ability?
<div>

An important detail to note is that during combat rounds of Invasion Combats, Shock Troops must be assigned hits first. This means that even if you win, if the opponent scored more hits than you have Shock Troops, they will all die and you will not capture anything. If you are sure to win the combat without them, having your Shock Troops go Commando is a way to safeguard them and still capture some installations. Note that Shock Troops can go Commando even if there is no installations to capture.
</div>

<!-- #### How can I get the SA-remastered system tiles? I did not see them on the website.
<div>

Glad you are enjoying the look of these tiles! They are indeed not on the website, on purpose. PsiComa made them and wants to keep some control over them. Ask him nicely over Discord or by email at <A HREF="mailto:jeskogtvedt@gmail.com">jeskogtvedt (at) gmail.com</A>. You can find him on the [SA discord server](https://discord.gg/YXnyYzz).
</div> -->