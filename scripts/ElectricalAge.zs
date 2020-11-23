# Electrical Age

# imported items
val crod = <ore:stickLongAnyCopper>;
val cstick = <ore:stickAnyCopper>;
val tstick = <ore:stickTin>;
val rubber = <ore:itemRubber>;

# EA items
val lcbl = <Eln:Eln.SixNode:2052>; # low voltage cable
val mcbl = <Eln:Eln.SixNode:2056>; # medium voltage cable
val hcbl = <Eln:Eln.SixNode:2060>; # high voltage cable
val vcbl = <Eln:Eln.SixNode:2064>; # very high voltage cable

val ccbl = <Eln:Eln.sharedItem:4160>; # copper wire
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

# Copper Thermal Cable
recipes.remove(<Eln:Eln.SixNode:3073>);
recipes.addShaped(<Eln:Eln.SixNode:3073> * 6,[[rubber,rubber,rubber],[tstick,tstick,tstick],[cstick,cstick,cstick]]);

# Tier 1 - Low Voltage copper

# Tier 2 - Medium Voltage 

# Tier 3 - High Voltage

# Tier 4 - Very High Voltage

# Very High Voltage Cable uses alloy