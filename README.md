# ForestFireAnalysis

Forest fires are a major environmental issue, creating economical and ecological damage while endangering human lives. Fast detection is a key element for controlling such phenomenon. To achieve this, one alternative is to use automatic tools based on local sensors, such as provided by meteorological stations. In effect, meteorological conditions (e.g. temperature, wind) are known to influence forest fires and several fire indexes, such as the forest Fire Weather Index (FWI).

## About the features in the dataset

The forest Fire Weather Index (FWI) is the Canadian system for rating fire danger
and it includes six components: Fine Fuel Moisture Code (FFMC),
Duff Moisture Code (DMC), Drought Code (DC), Initial Spread Index (ISI), Buildup
Index (BUI) and FWI. The first three are related to fuel codes: the FFMC denotes the
moisture content surface litter and influences ignition and fire spread, while the DMC
and DC represent the moisture content of shallow and deep organic layers, which affect
fire intensity. The ISI is a score that correlates with fire velocity spread, while BUI
represents the amount of available fuel. The FWI index is an indicator of fire intensity
and it combines the two previous components. Although different scales are used for
each of the FWI elements, high values suggest more severe burning conditions. Also,
the fuel moisture codes require a memory (time lag) of past weather conditions: 16
hours for FFMC, 12 days for DMC and 52 days for DC

<ol>
<li>X - x-axis spatial coordinate within the Montesinho park map: 1 to 9
<li>Y - y-axis spatial coordinate within the Montesinho park map: 2 to 9
<li>month - month of the year: 'jan' to 'dec'
<li>day - day of the week: 'mon' to 'sun'
<li>FFMC - FFMC index from the FWI system: 18.7 to 96.20
<li>DMC - DMC index from the FWI system: 1.1 to 291.3
<li>DC - DC index from the FWI system: 7.9 to 860.6
<li>ISI - ISI index from the FWI system: 0.0 to 56.10
<li>temp - temperature in Celsius degrees: 2.2 to 33.30
<li>RH - relative humidity in %: 15.0 to 100
<li>wind - wind speed in km/h: 0.40 to 9.40
<li>rain - outside rain in mm/m2 : 0.0 to 6.4
<li>area - the burned area of the forest (in ha): 0.00 to 1090.84
</ol>
