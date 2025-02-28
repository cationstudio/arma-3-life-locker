# arma-3-life-locker

This is a locker script for ArmA 3 RPG Life.

<a href="https://www.buymeacoffee.com/julianbauer" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-red.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

## Installation

A working installation of ArmA Life RPG Framework is required for a successful installation. Modifying the ArmA Life RPG Framework could cause errors – feel free to connect to our discord if you have a problem.

### Step 1

Download the newest release and extract the archive. Copy the folder “locker” in your “cation” folder that can be found in the  root folder (subsequently called \<mission\>) of your mission.

### Step 2

Open \<mission\>/cation/cation_functions.cpp and insert

`#include "locker\functions.cpp"`

and save the file.

### Step 3

Open \<mission\>/cation/cation_master.cpp and insert

`#include "locker\config.cpp"`

and save the file.

### Step 4

Open \<mission\>/cation/cation_remoteExec.cpp and insert

`#include "locker\remoteExec.cpp"`

and save the file.

### Step 5

Execute the following statement in your database:
```
CREATE TABLE IF NOT EXISTS `locker` (
    `playerid` varchar(17) NOT NULL,
    `civ_locker` text NOT NULL,
    `cop_locker` text NOT NULL,
    `med_locker` text NOT NULL,
    `east_locker` text NOT NULL,
    `civ_level` int(7) NOT NULL DEFAULT '0',
    `cop_level` int(7) NOT NULL DEFAULT '0',
    `med_level` int(7) NOT NULL DEFAULT '0',
    `east_level` int(7) NOT NULL DEFAULT '0',
    PRIMARY KEY (`playerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

**That's it!**

You have installed the cationstudio locker successfully!

## Configuration

You can adjust settings in \<mission\>/cation/locker/config.cpp.

In the settings it is important to set ArmA Life version to your used version.

The locker can be open in two ways:

1. Via addAction in the init of an object placed in your mission.sqm. Init Code:

```
this allowDamage false;
this enableSimulation false;
this addAction[(["Locker"] call cat_locker_fnc_getText),{[] call cat_locker_fnc_initDialog}];
```

2. Via button, for example in your y-menu. OnButtonClick Code:

`onButtonClick = "closeDialog 0; [] call cat_locker_fnc_initDialog;";`

Texts and translations can be edited in \<mission\>/cation/locker/language.cpp.
