# PetJournal-Enhanced

## General

- Hide pets by right clicking on their entry in the Pet Scroll List and select Hide/Show. A red circle with a slash thru it will appear over the pet.
- To hide these pets, uncheck 'show user hidden pets' in the miscellaneous filter menu.
- Pets now show the their predicted Level 25 stats in the pet card.
- For both breed information and level 25 stat prediction; Grey text indicates a low confidence in the prediction. Gold text indicates strong confidence
- Pet names are colored by their rarity.
- Shows each pets rarity in its border in the pet journal list for non wild pets.
- Shows each pets specialization is the pet journal list as an icon showing their highest stat. Now you know at a glance if your pet is tanky, speedy, or powerful.

## Localization

- Localized to enUS, deDE, ruRU, zhTW, esMX, zhCN, frFR, koKR
- Troubleshooting localization: If you run into trouble with any of the localizations please take a screen shot of the issue and submit a ticket. You can safely delete your local-xxXX.lua files to return to English. Where xxXX is your language code such as deDE.
- Note: do not delete `local-enUS.lua`

## Breeds

- Breed Identification information is now shown in the pet list, pet card and pet loadout. (Disabled in the PetJournal Enhanced options by default).
- To learn more about pet breeds go to [http://wow.curseforge.com/addons/battle_pet_breedid/pages/what-is-the-breed-id/](http://wow.curseforge.com/addons/battle_pet_breedid/pages/what-is-the-breed-id/)
- When Breed information is enabled, additional sorting and filtering options will be available.
- Note: The available breeds are stored and updated by LibPetBreedInfo and will not show for new pets after a patch. However a pets breed is determined accurately, even without the available breed information.

## Sorting

- Sort Pets by level, alphabetical, pet type, rarity, pet specialization, Breed
- Sort ascending or descending.

## Filter pets by

- Show user hidden pets.
- Can Trade
- Can't Trade
- Can Battle
- Can't Battle
- Quantity Owned
- Quality
- Specialization (Speedy, Resilient, Powerful)
- Zones which the pet can be obtained from
- Ability Types
- Breed
- Level Range (1,2-10,11-20,21-24,25)

Please report any Lua errors, inconsistent or weird behavior by using the [https://github.com/Stanzilla/PetJournal-Enhanced/issues](ticketing system) on the projects site.
