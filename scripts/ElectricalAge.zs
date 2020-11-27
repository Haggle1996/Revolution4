# Electrical Age

# imported items
val crod = <ore:stickLongAnyCopper>;
val cstick = <ore:stickAnyCopper>;
val cplate = <ore:plateCopper>;
val ccase = <ore:casingMachineAnyCopper>;

val tstick = <ore:stickTin>;
val tplate = <ore:plateTin>;

val splate = <ore:plateAnyIronOrSteel>;
val scase = <ore:casingMachineAnyIronOrSteel>;

val rubber = <ore:itemRubber>;
val gpane = <minecraft:glass_pane>;
val cdust = <ore:dustCoal>;
val stone = <minecraft:stone>;
val redstone = <minecraft:redstone>;

val motor = <gregtech:gt.multiitem.technological:12000>;
val amotor = <gregtech:gt.multiitem.technological:12002>;
val firestarter = <ore:craftingFirestarter>;
val chip = <ore:circuitBasic>;
val achip = <ore:circuitAdvanced>;
val magnet = <ore:stickIronMagnetic>;

val wirecutter = <ore:craftingToolWireCutter>;
val hammer = <ore:craftingToolHardHammer>;
val wrench = <ore:craftingToolWrench>;

# EA items
val lcbl = <Eln:Eln.SixNode:2052>; # low voltage cable
val mcbl = <Eln:Eln.SixNode:2056>; # medium voltage cable
val hcbl = <Eln:Eln.SixNode:2060>; # high voltage cable
val vcbl = <Eln:Eln.SixNode:2064>; # very high voltage cable
val scbl = <Eln:Eln.SixNode:2048>; # signal cable

val icbl = <Eln:Eln.sharedItem:4161>; # iron cable
val ccbl = <Eln:Eln.sharedItem:4160>; # copper cable
val tcbl = <Eln:Eln.sharedItem:4162>; # tungsten cable
val ground = <Eln:Eln.SixNode:128>; # ground cable

# Copper cable
recipes.remove(ccbl);
recipes.addShaped(ccbl * 6,[[cstick,cstick,cstick]]);

# Ground cable
recipes.remove(ground);
recipes.addShaped(ground, [[null,crod,null],[null,crod,null],[crod,crod,crod]]);

# Low Voltage Cable
recipes.remove(lcbl);
recipes.addShaped(lcbl * 6,[[rubber,rubber,rubber],[cstick,cstick,cstick],[rubber,rubber,rubber]]);
recipes.addShaped(lcbl,[[rubber],[ccbl]]);

# Medium Voltage Cable
recipes.remove(mcbl);
recipes.addShaped(mcbl,[[rubber],[lcbl],[lcbl]]);

# High Voltage Cable
recipes.remove(hcbl);
recipes.addShaped(hcbl,[[rubber],[mcbl],[mcbl]]);

# Very High Voltage Cable
recipes.remove(vcbl);
recipes.addShaped(vcbl,[[rubber],[hcbl],[hcbl]]);

# Signal Cable
recipes.remove(scbl);
recipes.addShaped(scbl * 6,[[rubber,rubber,rubber],[tstick,tstick,tstick],[rubber,rubber,rubber]]);
recipes.addShaped(scbl,[[rubber],[icbl]]);

# Iron Cable
recipes.remove(icbl);
recipes.addShaped(icbl * 6,[[tstick,tstick,tstick]]);
icbl.displayName = "Tin Cable";

# Copper Thermal Cable
recipes.remove(<Eln:Eln.SixNode:3073>);
recipes.addShaped(<Eln:Eln.SixNode:3073> * 6,[[rubber,rubber,rubber],[tstick,tstick,tstick],[cstick,cstick,cstick]]);

# Combustion Chamber
recipes.remove(<Eln:Eln.sharedItem:384>);
recipes.addShaped(<Eln:Eln.sharedItem:384>, [[hammer.transformDamage(),stone,null],[stone,firestarter,stone],[null,stone,null]]);

# Electrical Motors

# Electrical Motor
recipes.remove(<Eln:Eln.sharedItem:640>);
recipes.addShaped(<Eln:Eln.sharedItem:640>, [[hammer.transformDamage(),lcbl,wrench.transformDamage()],[tplate,motor,tplate],[lcbl,redstone,lcbl]]);

# Advanced Electrical Motor
recipes.remove(<Eln:Eln.sharedItem:641>);
recipes.addShaped(<Eln:Eln.sharedItem:641>, [[hammer.transformDamage(),mcbl,wrench.transformDamage()],[magnet,amotor,magnet],[mcbl,redstone,mcbl]]);

# Machine Blocks
recipes.remove(<Eln:Eln.sharedItem:7682>);
recipes.addShaped(<Eln:Eln.sharedItem:7682>, [[hammer.transformDamage(),tplate,wrench.transformDamage()],[tplate,ccase,tplate],[null,tplate,null]]);

recipes.remove(<Eln:Eln.sharedItem:7703>);
recipes.addShaped(<Eln:Eln.sharedItem:7703>, [[hammer.transformDamage(),splate,wrench.transformDamage()],[splate,scase,splate],[null,splate,null]]);

# Chips

recipes.remove(<Eln:Eln.sharedItem:7680>);
recipes.addShaped(<Eln:Eln.sharedItem:7680>,[[wirecutter.transformDamage(),redstone,null],[redstone,chip,redstone],[null,redstone,null]]);

recipes.remove(<Eln:Eln.sharedItem:7681>);
recipes.addShaped(<Eln:Eln.sharedItem:7681>, [[wirecutter.transformDamage(),redstone,null],[redstone,achip,redstone],[null,redstone,null]]);

# Thermal Probe Chip
recipes.remove(<Eln:Eln.sharedItem:7684>);
recipes.addShaped(<Eln:Eln.sharedItem:7684>,[[wirecutter.transformDamage(),ccbl,null],[redstone,tplate,redstone],[null,ccbl,null]]);

# Electrical Probe Chip
recipes.remove(<Eln:Eln.sharedItem:7683>);
recipes.addShaped(<Eln:Eln.sharedItem:7683>, [[wirecutter.transformDamage(),redstone,null],[redstone,cplate,redstone],[null,redstone,null]]);

# Hub
recipes.remove(<Eln:Eln.SixNode:136>);
recipes.addShaped(<Eln:Eln.SixNode:136>,[[tplate,null,tplate],[null,ccbl,null],[tplate,null,tplate]]);

# Lamp Socket A
recipes.remove(<Eln:Eln.SixNode:4096>);
recipes.addShaped(<Eln:Eln.SixNode:4096> * 3,[[gpane,null],[tplate,gpane],[gpane,null]]);

# Lamp Socket B Projector
recipes.remove(<Eln:Eln.SixNode:4097>);
recipes.addShaped(<Eln:Eln.SixNode:4097> * 3,[[null,tplate],[tplate,gpane],[null,tplate]]);

# Robust Lamp Socket
recipes.remove(<Eln:Eln.SixNode:4100>);
recipes.addShaped(<Eln:Eln.SixNode:4100> * 3,[[gpane,tplate,gpane]]);

# Flat Lamp Socket
recipes.remove(<Eln:Eln.SixNode:4101>);
recipes.addShaped(<Eln:Eln.SixNode:4101> * 3,[[tplate,gpane,tplate]]);

# Simple Lamp Socket
recipes.remove(<Eln:Eln.SixNode:4102>);
recipes.addShaped(<Eln:Eln.SixNode:4102> * 3,[[null,tplate,null],[gpane,gpane,gpane]]);

# Flourescent Lamp Socket
recipes.remove(<Eln:Eln.SixNode:4103>);
recipes.addShaped(<Eln:Eln.SixNode:4103> * 3,[[null,tplate,null],[tplate,null,tplate]]);

# Streetlight
recipes.remove(<Eln:Eln.SixNode:4104>);
recipes.addShaped(<Eln:Eln.SixNode:4104>,[[gpane],[tplate],[tplate]]);

# Sconce Lamp Socket
recipes.remove(<Eln:Eln.SixNode:4105>);
recipes.addShaped(<Eln:Eln.SixNode:4105> * 2,[[gpane,cdust,gpane],[gpane,tplate,gpane]]);

# Suspended Lamp Socket
recipes.remove(<Eln:Eln.SixNode:4108>);
recipes.addShaped(<Eln:Eln.SixNode:4108> * 2,[[tstick],[<Eln:Eln.SixNode:4100>]]);

# Long Suspended Lamp Socket
recipes.remove(<Eln:Eln.SixNode:4109>);
recipes.addShaped(<Eln:Eln.SixNode:4109> * 2,[[tstick],[tstick],[<Eln:Eln.SixNode:4100>]]);

# Lamp Supply
recipes.remove(<Eln:Eln.SixNode:4160>);
recipes.addShaped(<Eln:Eln.SixNode:4160>,[[null,tplate,null],[tplate,cplate,tplate],[null,tplate,null]]);

# Low Voltage Relay
recipes.remove(<Eln:Eln.SixNode:6016>);
recipes.addShaped(<Eln:Eln.SixNode:6016>,[[gpane,gpane,gpane],[tplate,ccbl,tplate],[lcbl,wirecutter.transformDamage(),lcbl]]);

# Medium Voltage Relay
recipes.remove(<Eln:Eln.SixNode:6017>);
recipes.addShaped(<Eln:Eln.SixNode:6017>,[[gpane,gpane,gpane],[tplate,ccbl,tplate],[mcbl,wirecutter.transformDamage(),mcbl]]);

# High Voltage Relay
recipes.remove(<Eln:Eln.SixNode:6018>);
recipes.addShaped(<Eln:Eln.SixNode:6018>,[[gpane,gpane,gpane],[tplate,ccbl,tplate],[hcbl,wirecutter.transformDamage(),hcbl]]);

# Very High Voltage Relay
recipes.remove(<Eln:Eln.SixNode:6019>);
recipes.addShaped(<Eln:Eln.SixNode:6019>,[[gpane,gpane,gpane],[tplate,ccbl,tplate],[vcbl,wirecutter.transformDamage(),vcbl]]);

# Signal Relay
recipes.remove(<Eln:Eln.SixNode:6020>);
recipes.addShaped(<Eln:Eln.SixNode:6020>,[[gpane,gpane,gpane],[tplate,ccbl,tplate],[scbl,wirecutter.transformDamage(),scbl]]);

# Thermal Dissipators

# Small Thermal Dissipator
recipes.remove(<Eln:Eln.TransparentNode:4096>);
recipes.addShaped(<Eln:Eln.TransparentNode:4096>, [[cplate,hammer.transformDamage(),cplate],[cplate,cplate,cplate],[<Eln:Eln.SixNode:3073>,cplate,<Eln:Eln.SixNode:3073>]]);

# Generators

# Stone Heat Furnace
recipes.remove(<Eln:Eln.TransparentNode:192>);
recipes.addShaped(<Eln:Eln.TransparentNode:192>, [[stone,stone,stone],[stone,<Eln:Eln.sharedItem:384>,stone],[stone,<Eln:Eln.SixNode:3073>,stone]]);

# 50V Turbine
recipes.remove(<Eln:Eln.TransparentNode:257>);
recipes.addShaped(<Eln:Eln.TransparentNode:257>, [[wrench.transformDamage(),motor,hammer.transformDamage()],[<Eln:Eln.SixNode:3073>,ccase,<Eln:Eln.SixNode:3073>],[null,lcbl,null]]);

# 50V Wind Turbine
recipes.remove(<Eln:Eln.TransparentNode:3136>);
recipes.addShaped(<Eln:Eln.TransparentNode:3136>, [[wrench.transformDamage(),tplate,hammer.transformDamage()],[tplate,motor,tplate],[null,ccase,null]]);
