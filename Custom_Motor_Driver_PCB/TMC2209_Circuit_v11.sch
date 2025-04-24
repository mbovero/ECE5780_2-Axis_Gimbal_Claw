<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="TMC2209_NewFootprint" urn="urn:adsk.wipprod:fs.file:vf.1IN8CW9eSw2m0OrUd3zOug">
<packages>
<package name="QFN28_5X5_3X8_EPAD_TRI" library_version="1">
<smd name="1" x="-2.4257" y="1.5" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="2" x="-2.4257" y="1" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="3" x="-2.4257" y="0.5" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="4" x="-2.4257" y="0" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="5" x="-2.4257" y="-0.5" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="6" x="-2.4257" y="-1" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="7" x="-2.4257" y="-1.5" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="8" x="-1.5" y="-2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="9" x="-1" y="-2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="10" x="-0.5" y="-2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="11" x="0" y="-2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="12" x="0.5" y="-2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="13" x="1" y="-2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="14" x="1.5" y="-2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="15" x="2.4257" y="-1.5" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="16" x="2.4257" y="-1" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="17" x="2.4257" y="-0.5" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="18" x="2.4257" y="0" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="19" x="2.4257" y="0.5" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="20" x="2.4257" y="1" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="21" x="2.4257" y="1.5" dx="0.254" dy="0.762" layer="1" rot="R270"/>
<smd name="22" x="1.5" y="2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="23" x="1" y="2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="24" x="0.5" y="2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="25" x="0" y="2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="26" x="-0.5" y="2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="27" x="-1" y="2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="28" x="-1.5" y="2.4257" dx="0.254" dy="0.762" layer="1" rot="R180"/>
<smd name="29" x="0" y="0" dx="3.7846" dy="3.7846" layer="1"/>
<wire x1="-2.6289" y1="-2.6289" x2="-1.9597" y2="-2.6289" width="0.1524" layer="21"/>
<wire x1="2.6289" y1="-2.6289" x2="2.6289" y2="-1.9597" width="0.1524" layer="21"/>
<wire x1="2.6289" y1="2.6289" x2="1.9597" y2="2.6289" width="0.1524" layer="21"/>
<wire x1="-2.6289" y1="2.6289" x2="-2.6289" y2="1.9597" width="0.1524" layer="21"/>
<wire x1="-2.6289" y1="-1.9597" x2="-2.6289" y2="-2.6289" width="0.1524" layer="21"/>
<wire x1="1.9597" y1="-2.6289" x2="2.6289" y2="-2.6289" width="0.1524" layer="21"/>
<wire x1="2.6289" y1="1.9597" x2="2.6289" y2="2.6289" width="0.1524" layer="21"/>
<wire x1="-1.9597" y1="2.6289" x2="-2.6289" y2="2.6289" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21" pour="solid">
<vertex x="-0.6905" y="-3.3147"/>
<vertex x="-0.3095" y="-3.3147"/>
<vertex x="-0.3095" y="-3.0607"/>
<vertex x="-0.6905" y="-3.0607"/>
</polygon>
<polygon width="0.0254" layer="21" pour="solid">
<vertex x="3.0607" y="0.8095"/>
<vertex x="3.3147" y="0.8095"/>
<vertex x="3.3147" y="1.1905"/>
<vertex x="3.0607" y="1.1905"/>
</polygon>
<text x="-4.018" y="0.865" size="1.27" layer="21" ratio="6">*</text>
<wire x1="2.4257" y1="1.5" x2="5.5753" y2="1.5" width="0.1524" layer="48"/>
<wire x1="2.4257" y1="1" x2="5.5753" y2="1" width="0.1524" layer="48"/>
<wire x1="5.1943" y1="1.5" x2="5.1943" y2="2.77" width="0.1524" layer="48"/>
<wire x1="5.1943" y1="1" x2="5.1943" y2="-0.27" width="0.1524" layer="48"/>
<wire x1="5.1943" y1="1.5" x2="5.0673" y2="1.754" width="0.1524" layer="48"/>
<wire x1="5.1943" y1="1.5" x2="5.3213" y2="1.754" width="0.1524" layer="48"/>
<wire x1="5.0673" y1="1.754" x2="5.3213" y2="1.754" width="0.1524" layer="48"/>
<wire x1="5.1943" y1="1" x2="5.0673" y2="0.746" width="0.1524" layer="48"/>
<wire x1="5.1943" y1="1" x2="5.3213" y2="0.746" width="0.1524" layer="48"/>
<wire x1="5.0673" y1="0.746" x2="5.3213" y2="0.746" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="1.5" x2="2.0447" y2="5.5753" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="1.5" x2="2.5019" y2="5.5753" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="5.1943" x2="0.7747" y2="5.1943" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="5.1943" x2="3.7719" y2="5.1943" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="5.1943" x2="1.7907" y2="5.3213" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="5.1943" x2="1.7907" y2="5.0673" width="0.1524" layer="48"/>
<wire x1="1.7907" y1="5.3213" x2="1.7907" y2="5.0673" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="5.1943" x2="2.7559" y2="5.3213" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="5.1943" x2="2.7559" y2="5.0673" width="0.1524" layer="48"/>
<wire x1="2.7559" y1="5.3213" x2="2.7559" y2="5.0673" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="1.5" x2="-2.5019" y2="7.4803" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="1.5" x2="2.5019" y2="7.4803" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="7.0993" x2="2.5019" y2="7.0993" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="7.0993" x2="-2.2479" y2="7.2263" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="7.0993" x2="-2.2479" y2="6.9723" width="0.1524" layer="48"/>
<wire x1="-2.2479" y1="7.2263" x2="-2.2479" y2="6.9723" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="7.0993" x2="2.2479" y2="7.2263" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="7.0993" x2="2.2479" y2="6.9723" width="0.1524" layer="48"/>
<wire x1="2.2479" y1="7.2263" x2="2.2479" y2="6.9723" width="0.1524" layer="48"/>
<wire x1="1.5" y1="2.5019" x2="7.4803" y2="2.5019" width="0.1524" layer="48"/>
<wire x1="1.5" y1="-2.5019" x2="7.4803" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="7.0993" y1="2.5019" x2="7.0993" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="7.0993" y1="2.5019" x2="6.9723" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="7.0993" y1="2.5019" x2="7.2263" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="6.9723" y1="2.2479" x2="7.2263" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="7.0993" y1="-2.5019" x2="6.9723" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="7.0993" y1="-2.5019" x2="7.2263" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="6.9723" y1="-2.2479" x2="7.2263" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="2.5019" x2="-7.4803" y2="2.5019" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-2.5019" x2="-7.4803" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="-7.0993" y1="2.5019" x2="-7.0993" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="-7.0993" y1="2.5019" x2="-7.2263" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="-7.0993" y1="2.5019" x2="-6.9723" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="-7.2263" y1="2.2479" x2="-6.9723" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="-7.0993" y1="-2.5019" x2="-7.2263" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="-7.0993" y1="-2.5019" x2="-6.9723" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="-7.2263" y1="-2.2479" x2="-6.9723" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="2.5019" x2="-2.5019" y2="-6.2103" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="2.5019" x2="2.5019" y2="-6.2103" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="-5.8293" x2="2.5019" y2="-5.8293" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="-5.8293" x2="-2.2479" y2="-5.7023" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="-5.8293" x2="-2.2479" y2="-5.9563" width="0.1524" layer="48"/>
<wire x1="-2.2479" y1="-5.7023" x2="-2.2479" y2="-5.9563" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-5.8293" x2="2.2479" y2="-5.7023" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-5.8293" x2="2.2479" y2="-5.9563" width="0.1524" layer="48"/>
<wire x1="2.2479" y1="-5.7023" x2="2.2479" y2="-5.9563" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="-1.9" x2="-1.9" y2="-4.1529" width="0.1524" layer="48"/>
<wire x1="1.9" y1="-1.9" x2="1.9" y2="-4.1529" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="-3.7719" x2="-3.17" y2="-3.7719" width="0.1524" layer="48"/>
<wire x1="1.9" y1="-3.7719" x2="3.17" y2="-3.7719" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="-3.7719" x2="-2.154" y2="-3.6449" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="-3.7719" x2="-2.154" y2="-3.8989" width="0.1524" layer="48"/>
<wire x1="-2.154" y1="-3.6449" x2="-2.154" y2="-3.8989" width="0.1524" layer="48"/>
<wire x1="1.9" y1="-3.7719" x2="2.154" y2="-3.6449" width="0.1524" layer="48"/>
<wire x1="1.9" y1="-3.7719" x2="2.154" y2="-3.8989" width="0.1524" layer="48"/>
<wire x1="2.154" y1="-3.6449" x2="2.154" y2="-3.8989" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="1.9" x2="-5.4229" y2="1.9" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="-1.9" x2="-5.4229" y2="-1.9" width="0.1524" layer="48"/>
<wire x1="-5.0419" y1="1.9" x2="-5.0419" y2="3.17" width="0.1524" layer="48"/>
<wire x1="-5.0419" y1="-1.9" x2="-5.0419" y2="-3.17" width="0.1524" layer="48"/>
<wire x1="-5.0419" y1="1.9" x2="-5.1689" y2="2.154" width="0.1524" layer="48"/>
<wire x1="-5.0419" y1="1.9" x2="-4.9149" y2="2.154" width="0.1524" layer="48"/>
<wire x1="-5.1689" y1="2.154" x2="-4.9149" y2="2.154" width="0.1524" layer="48"/>
<wire x1="-5.0419" y1="-1.9" x2="-5.1689" y2="-2.154" width="0.1524" layer="48"/>
<wire x1="-5.0419" y1="-1.9" x2="-4.9149" y2="-2.154" width="0.1524" layer="48"/>
<wire x1="-5.1689" y1="-2.154" x2="-4.9149" y2="-2.154" width="0.1524" layer="48"/>
<wire x1="-0.635" y1="5.08" x2="-0.635" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="1.9" y1="1.9" x2="1.9" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-0.635" y1="3.7719" x2="-1.905" y2="3.7719" width="0.1524" layer="48"/>
<wire x1="1.9" y1="3.7719" x2="3.17" y2="3.7719" width="0.1524" layer="48"/>
<wire x1="-0.635" y1="3.7719" x2="-0.889" y2="3.8989" width="0.1524" layer="48"/>
<wire x1="-0.635" y1="3.7719" x2="-0.889" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="-0.889" y1="3.8989" x2="-0.889" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="1.9" y1="3.7719" x2="2.154" y2="3.8989" width="0.1524" layer="48"/>
<wire x1="1.9" y1="3.7719" x2="2.154" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="2.154" y1="3.8989" x2="2.154" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-1.5" x2="5.4229" y2="-1.5" width="0.1524" layer="48"/>
<wire x1="1.5" y1="-2.5019" x2="5.4229" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="5.0419" y1="-1.5" x2="5.0419" y2="-0.23" width="0.1524" layer="48"/>
<wire x1="5.0419" y1="-2.5019" x2="5.0419" y2="-3.7719" width="0.1524" layer="48"/>
<wire x1="5.0419" y1="-1.5" x2="4.9149" y2="-1.246" width="0.1524" layer="48"/>
<wire x1="5.0419" y1="-1.5" x2="5.1689" y2="-1.246" width="0.1524" layer="48"/>
<wire x1="4.9149" y1="-1.246" x2="5.1689" y2="-1.246" width="0.1524" layer="48"/>
<wire x1="5.0419" y1="-2.5019" x2="4.9149" y2="-2.7559" width="0.1524" layer="48"/>
<wire x1="5.0419" y1="-2.5019" x2="5.1689" y2="-2.7559" width="0.1524" layer="48"/>
<wire x1="4.9149" y1="-2.7559" x2="5.1689" y2="-2.7559" width="0.1524" layer="48"/>
<text x="-15.2035" y="-9.0043" size="1.27" layer="48" ratio="6">Default Padstyle: RX10Y30D0T</text>
<text x="-21.9151" y="-10.5283" size="1.27" layer="48" ratio="6">Heat Tab 1 Padstyle: RX149p61Y149p61D0T</text>
<text x="-14.8136" y="-19.6723" size="1.27" layer="48" ratio="6">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8136" y="-21.1963" size="1.27" layer="48" ratio="6">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="2.0163" y="0.9325" size="0.635" layer="48" ratio="4">0.02in/0.5mm</text>
<text x="-1.7691" y="5.7023" size="0.635" layer="48" ratio="4">0.018in/0.457mm</text>
<text x="-4.0424" y="7.6073" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="7.6073" y="-0.3175" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="-15.6921" y="-0.3175" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="-4.0424" y="-6.9723" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="-3.178" y="-4.9149" size="0.635" layer="48" ratio="4">0.15in/3.8mm</text>
<text x="-8.2199" y="-0.508" size="0.635" layer="48" ratio="4">0.15in/3.8mm</text>
<text x="-4.0424" y="4.2799" size="0.635" layer="48" ratio="4">-0.1in/-2.535mm</text>
<text x="0.9995" y="-2.3876" size="0.635" layer="48" ratio="4">0.039in/1.002mm</text>
<wire x1="-2.5019" y1="1.2319" x2="-1.2319" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="1.3476" y1="2.5019" x2="1.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="1.6524" y1="2.5019" x2="1.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.8476" y1="2.5019" x2="1.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="1.1524" y1="2.5019" x2="0.8476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.3476" y1="2.5019" x2="0.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.6524" y1="2.5019" x2="0.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="2.5019" x2="0.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="2.5019" x2="-0.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.6524" y1="2.5019" x2="-0.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.3476" y1="2.5019" x2="-0.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-1.1524" y1="2.5019" x2="-0.8476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.8476" y1="2.5019" x2="-1.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-1.6524" y1="2.5019" x2="-1.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-1.3476" y1="2.5019" x2="-1.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="1.3476" x2="-2.5019" y2="1.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="1.6524" x2="-2.5019" y2="1.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.8476" x2="-2.5019" y2="1.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="1.1524" x2="-2.5019" y2="0.8476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.3476" x2="-2.5019" y2="0.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.6524" x2="-2.5019" y2="0.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.1524" x2="-2.5019" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.1524" x2="-2.5019" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.6524" x2="-2.5019" y2="-0.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.3476" x2="-2.5019" y2="-0.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-1.1524" x2="-2.5019" y2="-0.8476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.8476" x2="-2.5019" y2="-1.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-1.6524" x2="-2.5019" y2="-1.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-1.3476" x2="-2.5019" y2="-1.6524" width="0.1524" layer="51"/>
<wire x1="-1.3476" y1="-2.5019" x2="-1.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-1.6524" y1="-2.5019" x2="-1.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.8476" y1="-2.5019" x2="-1.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-1.1524" y1="-2.5019" x2="-0.8476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.3476" y1="-2.5019" x2="-0.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.6524" y1="-2.5019" x2="-0.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-2.5019" x2="-0.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-2.5019" x2="0.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.6524" y1="-2.5019" x2="0.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.3476" y1="-2.5019" x2="0.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="1.1524" y1="-2.5019" x2="0.8476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.8476" y1="-2.5019" x2="1.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="1.6524" y1="-2.5019" x2="1.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="1.3476" y1="-2.5019" x2="1.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-1.3476" x2="2.5019" y2="-1.6524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-1.6524" x2="2.5019" y2="-1.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.8476" x2="2.5019" y2="-1.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-1.1524" x2="2.5019" y2="-0.8476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.3476" x2="2.5019" y2="-0.6524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.6524" x2="2.5019" y2="-0.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.1524" x2="2.5019" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.1524" x2="2.5019" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.6524" x2="2.5019" y2="0.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.3476" x2="2.5019" y2="0.6524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="1.1524" x2="2.5019" y2="0.8476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.8476" x2="2.5019" y2="1.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="1.6524" x2="2.5019" y2="1.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="1.3476" x2="2.5019" y2="1.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-2.5019" x2="2.5019" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-2.5019" x2="2.5019" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="2.5019" x2="-2.5019" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="2.5019" x2="-2.5019" y2="-2.5019" width="0.1524" layer="51"/>
<text x="-1.986" y="0.865" size="1.27" layer="51" ratio="6">*</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="QFN28_5X5_3X8_EPAD_TRI-M">
<smd name="1" x="-2.4765" y="1.5" dx="0.254" dy="0.8636" layer="1" rot="R270"/>
<smd name="2" x="-2.4765" y="1" dx="0.254" dy="0.8636" layer="1" rot="R270"/>
<smd name="3" x="-2.4765" y="0.5" dx="0.254" dy="0.8636" layer="1" rot="R270"/>
<smd name="4" x="-2.4765" y="0" dx="0.254" dy="0.8636" layer="1" rot="R270"/>
<smd name="5" x="-2.4765" y="-0.5" dx="0.254" dy="0.8636" layer="1" rot="R270"/>
<smd name="6" x="-2.4765" y="-1" dx="0.254" dy="0.8636" layer="1" rot="R270"/>
<smd name="7" x="-2.4765" y="-1.5" dx="0.254" dy="0.8636" layer="1" rot="R270"/>
<smd name="8" x="-1.5" y="-2.4765" dx="0.254" dy="0.8636" layer="1"/>
<smd name="9" x="-1" y="-2.4765" dx="0.254" dy="0.8636" layer="1"/>
<smd name="10" x="-0.5" y="-2.4765" dx="0.254" dy="0.8636" layer="1"/>
<smd name="11" x="0" y="-2.4765" dx="0.254" dy="0.8636" layer="1"/>
<smd name="12" x="0.5" y="-2.4765" dx="0.254" dy="0.8636" layer="1"/>
<smd name="13" x="1" y="-2.4765" dx="0.254" dy="0.8636" layer="1"/>
<smd name="14" x="1.5" y="-2.4765" dx="0.254" dy="0.8636" layer="1"/>
<smd name="15" x="2.4765" y="-1.5" dx="0.254" dy="0.8636" layer="1" rot="R90"/>
<smd name="16" x="2.4765" y="-1" dx="0.254" dy="0.8636" layer="1" rot="R90"/>
<smd name="17" x="2.4765" y="-0.5" dx="0.254" dy="0.8636" layer="1" rot="R90"/>
<smd name="18" x="2.4765" y="0" dx="0.254" dy="0.8636" layer="1" rot="R90"/>
<smd name="19" x="2.4765" y="0.5" dx="0.254" dy="0.8636" layer="1" rot="R90"/>
<smd name="20" x="2.4765" y="1" dx="0.254" dy="0.8636" layer="1" rot="R90"/>
<smd name="21" x="2.4765" y="1.5" dx="0.254" dy="0.8636" layer="1" rot="R90"/>
<smd name="22" x="1.5" y="2.4765" dx="0.254" dy="0.8636" layer="1" rot="R180"/>
<smd name="23" x="1" y="2.4765" dx="0.254" dy="0.8636" layer="1" rot="R180"/>
<smd name="24" x="0.5" y="2.4765" dx="0.254" dy="0.8636" layer="1" rot="R180"/>
<smd name="25" x="0" y="2.4765" dx="0.254" dy="0.8636" layer="1" rot="R180"/>
<smd name="26" x="-0.5" y="2.4765" dx="0.254" dy="0.8636" layer="1" rot="R180"/>
<smd name="27" x="-1" y="2.4765" dx="0.254" dy="0.8636" layer="1" rot="R180"/>
<smd name="28" x="-1.5" y="2.4765" dx="0.254" dy="0.8636" layer="1" rot="R180"/>
<smd name="29" x="0" y="0" dx="3.8" dy="3.8" layer="1"/>
<wire x1="-2.6289" y1="-2.6289" x2="-1.9597" y2="-2.6289" width="0.1524" layer="21"/>
<wire x1="2.6289" y1="-2.6289" x2="2.6289" y2="-1.9597" width="0.1524" layer="21"/>
<wire x1="2.6289" y1="2.6289" x2="1.9597" y2="2.6289" width="0.1524" layer="21"/>
<wire x1="-2.6289" y1="2.6289" x2="-2.6289" y2="1.9597" width="0.1524" layer="21"/>
<wire x1="-2.6289" y1="-1.9597" x2="-2.6289" y2="-2.6289" width="0.1524" layer="21"/>
<wire x1="1.9597" y1="-2.6289" x2="2.6289" y2="-2.6289" width="0.1524" layer="21"/>
<wire x1="2.6289" y1="1.9597" x2="2.6289" y2="2.6289" width="0.1524" layer="21"/>
<wire x1="-1.9597" y1="2.6289" x2="-2.6289" y2="2.6289" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21" pour="solid">
<vertex x="-0.6905" y="-3.4163"/>
<vertex x="-0.3095" y="-3.4163"/>
<vertex x="-0.3095" y="-3.1623"/>
<vertex x="-0.6905" y="-3.1623"/>
</polygon>
<polygon width="0.0254" layer="21" pour="solid">
<vertex x="3.1623" y="0.8095"/>
<vertex x="3.4163" y="0.8095"/>
<vertex x="3.4163" y="1.1905"/>
<vertex x="3.1623" y="1.1905"/>
</polygon>
<text x="-4.272" y="0.865" size="1.27" layer="21" ratio="6">*</text>
<wire x1="2.4765" y1="1.5" x2="6.8961" y2="1.5" width="0.1524" layer="48"/>
<wire x1="2.4765" y1="1" x2="6.8961" y2="1" width="0.1524" layer="48"/>
<wire x1="6.5151" y1="1.5" x2="6.5151" y2="2.77" width="0.1524" layer="48"/>
<wire x1="6.5151" y1="1" x2="6.5151" y2="-0.27" width="0.1524" layer="48"/>
<wire x1="6.5151" y1="1.5" x2="6.3881" y2="1.754" width="0.1524" layer="48"/>
<wire x1="6.5151" y1="1.5" x2="6.6421" y2="1.754" width="0.1524" layer="48"/>
<wire x1="6.3881" y1="1.754" x2="6.6421" y2="1.754" width="0.1524" layer="48"/>
<wire x1="6.5151" y1="1" x2="6.3881" y2="0.746" width="0.1524" layer="48"/>
<wire x1="6.5151" y1="1" x2="6.6421" y2="0.746" width="0.1524" layer="48"/>
<wire x1="6.3881" y1="0.746" x2="6.6421" y2="0.746" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="1.5" x2="2.0447" y2="5.6261" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="1.5" x2="2.5019" y2="5.6261" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="5.2451" x2="0.7747" y2="5.2451" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="5.2451" x2="3.7719" y2="5.2451" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="5.2451" x2="1.7907" y2="5.3721" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="5.2451" x2="1.7907" y2="5.1181" width="0.1524" layer="48"/>
<wire x1="1.7907" y1="5.3721" x2="1.7907" y2="5.1181" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="5.2451" x2="2.7559" y2="5.3721" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="5.2451" x2="2.7559" y2="5.1181" width="0.1524" layer="48"/>
<wire x1="2.7559" y1="5.3721" x2="2.7559" y2="5.1181" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="1.5" x2="-2.5019" y2="4.4831" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="1.5" x2="2.5019" y2="4.4831" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="4.1021" x2="2.5019" y2="4.1021" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="4.1021" x2="-2.2479" y2="4.2291" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="4.1021" x2="-2.2479" y2="3.9751" width="0.1524" layer="48"/>
<wire x1="-2.2479" y1="4.2291" x2="-2.2479" y2="3.9751" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="4.1021" x2="2.2479" y2="4.2291" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="4.1021" x2="2.2479" y2="3.9751" width="0.1524" layer="48"/>
<wire x1="2.2479" y1="4.2291" x2="2.2479" y2="3.9751" width="0.1524" layer="48"/>
<wire x1="1.5" y1="2.5019" x2="4.4831" y2="2.5019" width="0.1524" layer="48"/>
<wire x1="1.5" y1="-2.5019" x2="4.4831" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="4.1021" y1="2.5019" x2="4.1021" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="4.1021" y1="2.5019" x2="3.9751" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="4.1021" y1="2.5019" x2="4.2291" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="3.9751" y1="2.2479" x2="4.2291" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="4.1021" y1="-2.5019" x2="3.9751" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="4.1021" y1="-2.5019" x2="4.2291" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="3.9751" y1="-2.2479" x2="4.2291" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="2.5019" x2="-4.4831" y2="2.5019" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-2.5019" x2="-4.4831" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="-4.1021" y1="2.5019" x2="-4.1021" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="-4.1021" y1="2.5019" x2="-4.2291" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="-4.1021" y1="2.5019" x2="-3.9751" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="-4.2291" y1="2.2479" x2="-3.9751" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="-4.1021" y1="-2.5019" x2="-4.2291" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="-4.1021" y1="-2.5019" x2="-3.9751" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="-4.2291" y1="-2.2479" x2="-3.9751" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="2.5019" x2="-2.5019" y2="-4.4831" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="2.5019" x2="2.5019" y2="-4.4831" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="-4.1021" x2="2.5019" y2="-4.1021" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="-4.1021" x2="-2.2479" y2="-3.9751" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="-4.1021" x2="-2.2479" y2="-4.2291" width="0.1524" layer="48"/>
<wire x1="-2.2479" y1="-3.9751" x2="-2.2479" y2="-4.2291" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-4.1021" x2="2.2479" y2="-3.9751" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-4.1021" x2="2.2479" y2="-4.2291" width="0.1524" layer="48"/>
<wire x1="2.2479" y1="-3.9751" x2="2.2479" y2="-4.2291" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="-1.9" x2="-1.9" y2="6.0579" width="0.1524" layer="48"/>
<wire x1="1.9" y1="-1.9" x2="1.9" y2="6.0579" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="5.6769" x2="-3.17" y2="5.6769" width="0.1524" layer="48"/>
<wire x1="1.9" y1="5.6769" x2="3.17" y2="5.6769" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="5.6769" x2="-2.154" y2="5.8039" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="5.6769" x2="-2.154" y2="5.5499" width="0.1524" layer="48"/>
<wire x1="-2.154" y1="5.8039" x2="-2.154" y2="5.5499" width="0.1524" layer="48"/>
<wire x1="1.9" y1="5.6769" x2="2.154" y2="5.8039" width="0.1524" layer="48"/>
<wire x1="1.9" y1="5.6769" x2="2.154" y2="5.5499" width="0.1524" layer="48"/>
<wire x1="2.154" y1="5.8039" x2="2.154" y2="5.5499" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="1.9" x2="-6.0579" y2="1.9" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="-1.9" x2="-6.0579" y2="-1.9" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="1.9" x2="-5.6769" y2="3.17" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="-1.9" x2="-5.6769" y2="-3.17" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="1.9" x2="-5.8039" y2="2.154" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="1.9" x2="-5.5499" y2="2.154" width="0.1524" layer="48"/>
<wire x1="-5.8039" y1="2.154" x2="-5.5499" y2="2.154" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="-1.9" x2="-5.8039" y2="-2.154" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="-1.9" x2="-5.5499" y2="-2.154" width="0.1524" layer="48"/>
<wire x1="-5.8039" y1="-2.154" x2="-5.5499" y2="-2.154" width="0.1524" layer="48"/>
<text x="-15.2035" y="-9.0551" size="1.27" layer="48" ratio="6">Default Padstyle: RX10Y34D0T</text>
<text x="-21.9151" y="-10.5791" size="1.27" layer="48" ratio="6">Heat Tab 1 Padstyle: RX149p61Y149p61D0T</text>
<text x="-14.8136" y="-12.1031" size="1.27" layer="48" ratio="6">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8136" y="-13.6271" size="1.27" layer="48" ratio="6">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="3.3371" y="0.9325" size="0.635" layer="48" ratio="4">0.02in/0.5mm</text>
<text x="-1.7691" y="5.7531" size="0.635" layer="48" ratio="4">0.018in/0.457mm</text>
<text x="-4.0424" y="4.6101" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="4.6101" y="-0.3175" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="-12.6949" y="-0.3175" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="-4.0424" y="-5.2451" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="-3.178" y="6.1849" size="0.635" layer="48" ratio="4">0.15in/3.8mm</text>
<text x="-12.5409" y="-0.3175" size="0.635" layer="48" ratio="4">0.15in/3.8mm</text>
<wire x1="-2.5019" y1="1.2319" x2="-1.2319" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="1.3476" y1="2.5019" x2="1.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="1.6524" y1="2.5019" x2="1.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.8476" y1="2.5019" x2="1.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="1.1524" y1="2.5019" x2="0.8476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.3476" y1="2.5019" x2="0.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.6524" y1="2.5019" x2="0.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="2.5019" x2="0.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="2.5019" x2="-0.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.6524" y1="2.5019" x2="-0.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.3476" y1="2.5019" x2="-0.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-1.1524" y1="2.5019" x2="-0.8476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.8476" y1="2.5019" x2="-1.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-1.6524" y1="2.5019" x2="-1.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-1.3476" y1="2.5019" x2="-1.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="1.3476" x2="-2.5019" y2="1.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="1.6524" x2="-2.5019" y2="1.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.8476" x2="-2.5019" y2="1.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="1.1524" x2="-2.5019" y2="0.8476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.3476" x2="-2.5019" y2="0.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.6524" x2="-2.5019" y2="0.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.1524" x2="-2.5019" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.1524" x2="-2.5019" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.6524" x2="-2.5019" y2="-0.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.3476" x2="-2.5019" y2="-0.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-1.1524" x2="-2.5019" y2="-0.8476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.8476" x2="-2.5019" y2="-1.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-1.6524" x2="-2.5019" y2="-1.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-1.3476" x2="-2.5019" y2="-1.6524" width="0.1524" layer="51"/>
<wire x1="-1.3476" y1="-2.5019" x2="-1.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-1.6524" y1="-2.5019" x2="-1.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.8476" y1="-2.5019" x2="-1.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-1.1524" y1="-2.5019" x2="-0.8476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.3476" y1="-2.5019" x2="-0.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.6524" y1="-2.5019" x2="-0.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-2.5019" x2="-0.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-2.5019" x2="0.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.6524" y1="-2.5019" x2="0.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.3476" y1="-2.5019" x2="0.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="1.1524" y1="-2.5019" x2="0.8476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.8476" y1="-2.5019" x2="1.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="1.6524" y1="-2.5019" x2="1.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="1.3476" y1="-2.5019" x2="1.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-1.3476" x2="2.5019" y2="-1.6524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-1.6524" x2="2.5019" y2="-1.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.8476" x2="2.5019" y2="-1.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-1.1524" x2="2.5019" y2="-0.8476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.3476" x2="2.5019" y2="-0.6524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.6524" x2="2.5019" y2="-0.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.1524" x2="2.5019" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.1524" x2="2.5019" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.6524" x2="2.5019" y2="0.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.3476" x2="2.5019" y2="0.6524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="1.1524" x2="2.5019" y2="0.8476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.8476" x2="2.5019" y2="1.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="1.6524" x2="2.5019" y2="1.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="1.3476" x2="2.5019" y2="1.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-2.5019" x2="2.5019" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-2.5019" x2="2.5019" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="2.5019" x2="-2.5019" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="2.5019" x2="-2.5019" y2="-2.5019" width="0.1524" layer="51"/>
<text x="-1.8336" y="0.865" size="1.27" layer="51" ratio="6">*</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
<text x="-3.2712" y="-0.635" size="1.27" layer="25" ratio="6">&gt;Name</text>
</package>
<package name="QFN28_5X5_3X8_EPAD_TRI-L">
<smd name="1" x="-2.3749" y="1.5" dx="0.254" dy="0.6604" layer="1" rot="R270"/>
<smd name="2" x="-2.3749" y="1" dx="0.254" dy="0.6604" layer="1" rot="R270"/>
<smd name="3" x="-2.3749" y="0.5" dx="0.254" dy="0.6604" layer="1" rot="R270"/>
<smd name="4" x="-2.3749" y="0" dx="0.254" dy="0.6604" layer="1" rot="R270"/>
<smd name="5" x="-2.3749" y="-0.5" dx="0.254" dy="0.6604" layer="1" rot="R270"/>
<smd name="6" x="-2.3749" y="-1" dx="0.254" dy="0.6604" layer="1" rot="R270"/>
<smd name="7" x="-2.3749" y="-1.5" dx="0.254" dy="0.6604" layer="1" rot="R270"/>
<smd name="8" x="-1.5" y="-2.3749" dx="0.254" dy="0.6604" layer="1"/>
<smd name="9" x="-1" y="-2.3749" dx="0.254" dy="0.6604" layer="1"/>
<smd name="10" x="-0.5" y="-2.3749" dx="0.254" dy="0.6604" layer="1"/>
<smd name="11" x="0" y="-2.3749" dx="0.254" dy="0.6604" layer="1"/>
<smd name="12" x="0.5" y="-2.3749" dx="0.254" dy="0.6604" layer="1"/>
<smd name="13" x="1" y="-2.3749" dx="0.254" dy="0.6604" layer="1"/>
<smd name="14" x="1.5" y="-2.3749" dx="0.254" dy="0.6604" layer="1"/>
<smd name="15" x="2.3749" y="-1.5" dx="0.254" dy="0.6604" layer="1" rot="R90"/>
<smd name="16" x="2.3749" y="-1" dx="0.254" dy="0.6604" layer="1" rot="R90"/>
<smd name="17" x="2.3749" y="-0.5" dx="0.254" dy="0.6604" layer="1" rot="R90"/>
<smd name="18" x="2.3749" y="0" dx="0.254" dy="0.6604" layer="1" rot="R90"/>
<smd name="19" x="2.3749" y="0.5" dx="0.254" dy="0.6604" layer="1" rot="R90"/>
<smd name="20" x="2.3749" y="1" dx="0.254" dy="0.6604" layer="1" rot="R90"/>
<smd name="21" x="2.3749" y="1.5" dx="0.254" dy="0.6604" layer="1" rot="R90"/>
<smd name="22" x="1.5" y="2.3749" dx="0.254" dy="0.6604" layer="1" rot="R180"/>
<smd name="23" x="1" y="2.3749" dx="0.254" dy="0.6604" layer="1" rot="R180"/>
<smd name="24" x="0.5" y="2.3749" dx="0.254" dy="0.6604" layer="1" rot="R180"/>
<smd name="25" x="0" y="2.3749" dx="0.254" dy="0.6604" layer="1" rot="R180"/>
<smd name="26" x="-0.5" y="2.3749" dx="0.254" dy="0.6604" layer="1" rot="R180"/>
<smd name="27" x="-1" y="2.3749" dx="0.254" dy="0.6604" layer="1" rot="R180"/>
<smd name="28" x="-1.5" y="2.3749" dx="0.254" dy="0.6604" layer="1" rot="R180"/>
<smd name="29" x="0" y="0" dx="3.8" dy="3.8" layer="1"/>
<wire x1="-2.6289" y1="-2.6289" x2="-1.9597" y2="-2.6289" width="0.1524" layer="21"/>
<wire x1="2.6289" y1="-2.6289" x2="2.6289" y2="-1.9597" width="0.1524" layer="21"/>
<wire x1="2.6289" y1="2.6289" x2="1.9597" y2="2.6289" width="0.1524" layer="21"/>
<wire x1="-2.6289" y1="2.6289" x2="-2.6289" y2="1.9597" width="0.1524" layer="21"/>
<wire x1="-2.6289" y1="-1.9597" x2="-2.6289" y2="-2.6289" width="0.1524" layer="21"/>
<wire x1="1.9597" y1="-2.6289" x2="2.6289" y2="-2.6289" width="0.1524" layer="21"/>
<wire x1="2.6289" y1="1.9597" x2="2.6289" y2="2.6289" width="0.1524" layer="21"/>
<wire x1="-1.9597" y1="2.6289" x2="-2.6289" y2="2.6289" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21" pour="solid">
<vertex x="-0.6905" y="-3.2131"/>
<vertex x="-0.3095" y="-3.2131"/>
<vertex x="-0.3095" y="-2.9591"/>
<vertex x="-0.6905" y="-2.9591"/>
</polygon>
<polygon width="0.0254" layer="21" pour="solid">
<vertex x="2.9591" y="0.8095"/>
<vertex x="3.2131" y="0.8095"/>
<vertex x="3.2131" y="1.1905"/>
<vertex x="2.9591" y="1.1905"/>
</polygon>
<text x="-4.0688" y="0.865" size="1.27" layer="21" ratio="6">*</text>
<wire x1="2.3749" y1="1.5" x2="6.7945" y2="1.5" width="0.1524" layer="48"/>
<wire x1="2.3749" y1="1" x2="6.7945" y2="1" width="0.1524" layer="48"/>
<wire x1="6.4135" y1="1.5" x2="6.4135" y2="2.77" width="0.1524" layer="48"/>
<wire x1="6.4135" y1="1" x2="6.4135" y2="-0.27" width="0.1524" layer="48"/>
<wire x1="6.4135" y1="1.5" x2="6.2865" y2="1.754" width="0.1524" layer="48"/>
<wire x1="6.4135" y1="1.5" x2="6.5405" y2="1.754" width="0.1524" layer="48"/>
<wire x1="6.2865" y1="1.754" x2="6.5405" y2="1.754" width="0.1524" layer="48"/>
<wire x1="6.4135" y1="1" x2="6.2865" y2="0.746" width="0.1524" layer="48"/>
<wire x1="6.4135" y1="1" x2="6.5405" y2="0.746" width="0.1524" layer="48"/>
<wire x1="6.2865" y1="0.746" x2="6.5405" y2="0.746" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="1.5" x2="2.0447" y2="5.5245" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="1.5" x2="2.5019" y2="5.5245" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="5.1435" x2="0.7747" y2="5.1435" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="5.1435" x2="3.7719" y2="5.1435" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="5.1435" x2="1.7907" y2="5.2705" width="0.1524" layer="48"/>
<wire x1="2.0447" y1="5.1435" x2="1.7907" y2="5.0165" width="0.1524" layer="48"/>
<wire x1="1.7907" y1="5.2705" x2="1.7907" y2="5.0165" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="5.1435" x2="2.7559" y2="5.2705" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="5.1435" x2="2.7559" y2="5.0165" width="0.1524" layer="48"/>
<wire x1="2.7559" y1="5.2705" x2="2.7559" y2="5.0165" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="1.5" x2="-2.5019" y2="4.3815" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="1.5" x2="2.5019" y2="4.3815" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="4.0005" x2="2.5019" y2="4.0005" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="4.0005" x2="-2.2479" y2="4.1275" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="4.0005" x2="-2.2479" y2="3.8735" width="0.1524" layer="48"/>
<wire x1="-2.2479" y1="4.1275" x2="-2.2479" y2="3.8735" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="4.0005" x2="2.2479" y2="4.1275" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="4.0005" x2="2.2479" y2="3.8735" width="0.1524" layer="48"/>
<wire x1="2.2479" y1="4.1275" x2="2.2479" y2="3.8735" width="0.1524" layer="48"/>
<wire x1="1.5" y1="2.5019" x2="4.3815" y2="2.5019" width="0.1524" layer="48"/>
<wire x1="1.5" y1="-2.5019" x2="4.3815" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="4.0005" y1="2.5019" x2="4.0005" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="4.0005" y1="2.5019" x2="3.8735" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="4.0005" y1="2.5019" x2="4.1275" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="3.8735" y1="2.2479" x2="4.1275" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="4.0005" y1="-2.5019" x2="3.8735" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="4.0005" y1="-2.5019" x2="4.1275" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="3.8735" y1="-2.2479" x2="4.1275" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="2.5019" x2="-4.3815" y2="2.5019" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-2.5019" x2="-4.3815" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="-4.0005" y1="2.5019" x2="-4.0005" y2="-2.5019" width="0.1524" layer="48"/>
<wire x1="-4.0005" y1="2.5019" x2="-4.1275" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="-4.0005" y1="2.5019" x2="-3.8735" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="-4.1275" y1="2.2479" x2="-3.8735" y2="2.2479" width="0.1524" layer="48"/>
<wire x1="-4.0005" y1="-2.5019" x2="-4.1275" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="-4.0005" y1="-2.5019" x2="-3.8735" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="-4.1275" y1="-2.2479" x2="-3.8735" y2="-2.2479" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="2.5019" x2="-2.5019" y2="-4.3815" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="2.5019" x2="2.5019" y2="-4.3815" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="-4.0005" x2="2.5019" y2="-4.0005" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="-4.0005" x2="-2.2479" y2="-3.8735" width="0.1524" layer="48"/>
<wire x1="-2.5019" y1="-4.0005" x2="-2.2479" y2="-4.1275" width="0.1524" layer="48"/>
<wire x1="-2.2479" y1="-3.8735" x2="-2.2479" y2="-4.1275" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-4.0005" x2="2.2479" y2="-3.8735" width="0.1524" layer="48"/>
<wire x1="2.5019" y1="-4.0005" x2="2.2479" y2="-4.1275" width="0.1524" layer="48"/>
<wire x1="2.2479" y1="-3.8735" x2="2.2479" y2="-4.1275" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="-1.9" x2="-1.9" y2="6.0579" width="0.1524" layer="48"/>
<wire x1="1.9" y1="-1.9" x2="1.9" y2="6.0579" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="5.6769" x2="-3.17" y2="5.6769" width="0.1524" layer="48"/>
<wire x1="1.9" y1="5.6769" x2="3.17" y2="5.6769" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="5.6769" x2="-2.154" y2="5.8039" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="5.6769" x2="-2.154" y2="5.5499" width="0.1524" layer="48"/>
<wire x1="-2.154" y1="5.8039" x2="-2.154" y2="5.5499" width="0.1524" layer="48"/>
<wire x1="1.9" y1="5.6769" x2="2.154" y2="5.8039" width="0.1524" layer="48"/>
<wire x1="1.9" y1="5.6769" x2="2.154" y2="5.5499" width="0.1524" layer="48"/>
<wire x1="2.154" y1="5.8039" x2="2.154" y2="5.5499" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="1.9" x2="-6.0579" y2="1.9" width="0.1524" layer="48"/>
<wire x1="-1.9" y1="-1.9" x2="-6.0579" y2="-1.9" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="1.9" x2="-5.6769" y2="3.17" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="-1.9" x2="-5.6769" y2="-3.17" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="1.9" x2="-5.8039" y2="2.154" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="1.9" x2="-5.5499" y2="2.154" width="0.1524" layer="48"/>
<wire x1="-5.8039" y1="2.154" x2="-5.5499" y2="2.154" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="-1.9" x2="-5.8039" y2="-2.154" width="0.1524" layer="48"/>
<wire x1="-5.6769" y1="-1.9" x2="-5.5499" y2="-2.154" width="0.1524" layer="48"/>
<wire x1="-5.8039" y1="-2.154" x2="-5.5499" y2="-2.154" width="0.1524" layer="48"/>
<text x="-15.2035" y="-8.9535" size="1.27" layer="48" ratio="6">Default Padstyle: RX10Y26D0T</text>
<text x="-21.9151" y="-10.4775" size="1.27" layer="48" ratio="6">Heat Tab 1 Padstyle: RX149p61Y149p61D0T</text>
<text x="-14.8136" y="-12.0015" size="1.27" layer="48" ratio="6">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8136" y="-13.5255" size="1.27" layer="48" ratio="6">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="3.2355" y="0.9325" size="0.635" layer="48" ratio="4">0.02in/0.5mm</text>
<text x="-1.7691" y="5.6515" size="0.635" layer="48" ratio="4">0.018in/0.457mm</text>
<text x="-4.0424" y="4.5085" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="4.5085" y="-0.3175" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="-12.5933" y="-0.3175" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="-4.0424" y="-5.1435" size="0.635" layer="48" ratio="4">0.197in/5.004mm</text>
<text x="-3.178" y="6.1849" size="0.635" layer="48" ratio="4">0.15in/3.8mm</text>
<text x="-12.5409" y="-0.3175" size="0.635" layer="48" ratio="4">0.15in/3.8mm</text>
<wire x1="-2.5019" y1="1.2319" x2="-1.2319" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="1.3476" y1="2.5019" x2="1.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="1.6524" y1="2.5019" x2="1.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.8476" y1="2.5019" x2="1.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="1.1524" y1="2.5019" x2="0.8476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.3476" y1="2.5019" x2="0.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.6524" y1="2.5019" x2="0.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="2.5019" x2="0.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="2.5019" x2="-0.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.6524" y1="2.5019" x2="-0.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.3476" y1="2.5019" x2="-0.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-1.1524" y1="2.5019" x2="-0.8476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-0.8476" y1="2.5019" x2="-1.1524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-1.6524" y1="2.5019" x2="-1.3476" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-1.3476" y1="2.5019" x2="-1.6524" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="1.3476" x2="-2.5019" y2="1.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="1.6524" x2="-2.5019" y2="1.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.8476" x2="-2.5019" y2="1.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="1.1524" x2="-2.5019" y2="0.8476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.3476" x2="-2.5019" y2="0.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.6524" x2="-2.5019" y2="0.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.1524" x2="-2.5019" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="0.1524" x2="-2.5019" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.6524" x2="-2.5019" y2="-0.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.3476" x2="-2.5019" y2="-0.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-1.1524" x2="-2.5019" y2="-0.8476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-0.8476" x2="-2.5019" y2="-1.1524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-1.6524" x2="-2.5019" y2="-1.3476" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-1.3476" x2="-2.5019" y2="-1.6524" width="0.1524" layer="51"/>
<wire x1="-1.3476" y1="-2.5019" x2="-1.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-1.6524" y1="-2.5019" x2="-1.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.8476" y1="-2.5019" x2="-1.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-1.1524" y1="-2.5019" x2="-0.8476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.3476" y1="-2.5019" x2="-0.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.6524" y1="-2.5019" x2="-0.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-2.5019" x2="-0.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-2.5019" x2="0.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.6524" y1="-2.5019" x2="0.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.3476" y1="-2.5019" x2="0.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="1.1524" y1="-2.5019" x2="0.8476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="0.8476" y1="-2.5019" x2="1.1524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="1.6524" y1="-2.5019" x2="1.3476" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="1.3476" y1="-2.5019" x2="1.6524" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-1.3476" x2="2.5019" y2="-1.6524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-1.6524" x2="2.5019" y2="-1.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.8476" x2="2.5019" y2="-1.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-1.1524" x2="2.5019" y2="-0.8476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.3476" x2="2.5019" y2="-0.6524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.6524" x2="2.5019" y2="-0.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.1524" x2="2.5019" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-0.1524" x2="2.5019" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.6524" x2="2.5019" y2="0.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.3476" x2="2.5019" y2="0.6524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="1.1524" x2="2.5019" y2="0.8476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="0.8476" x2="2.5019" y2="1.1524" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="1.6524" x2="2.5019" y2="1.3476" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="1.3476" x2="2.5019" y2="1.6524" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="-2.5019" x2="2.5019" y2="-2.5019" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="-2.5019" x2="2.5019" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="2.5019" y1="2.5019" x2="-2.5019" y2="2.5019" width="0.1524" layer="51"/>
<wire x1="-2.5019" y1="2.5019" x2="-2.5019" y2="-2.5019" width="0.1524" layer="51"/>
<text x="-1.8336" y="0.865" size="1.27" layer="51" ratio="6">*</text>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
<text x="-3.2712" y="-0.635" size="1.27" layer="25" ratio="6">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="TMC2209-LA">
<pin name="OB2" x="2.54" y="0" length="middle" direction="out"/>
<pin name="ENN" x="2.54" y="-2.54" length="middle" direction="in"/>
<pin name="GND_2" x="2.54" y="-5.08" length="middle" direction="pwr"/>
<pin name="CPO" x="2.54" y="-7.62" length="middle" direction="out"/>
<pin name="CPI" x="2.54" y="-10.16" length="middle" direction="in"/>
<pin name="VCP" x="2.54" y="-12.7" length="middle" direction="pwr"/>
<pin name="SPREAD" x="2.54" y="-15.24" length="middle" direction="in"/>
<pin name="5VOUT" x="2.54" y="-17.78" length="middle" direction="out"/>
<pin name="MS1_AD0" x="2.54" y="-20.32" length="middle" direction="in"/>
<pin name="MS2_AD1" x="2.54" y="-22.86" length="middle" direction="in"/>
<pin name="DIAG" x="2.54" y="-25.4" length="middle" direction="out"/>
<pin name="INDEX" x="2.54" y="-27.94" length="middle" direction="out"/>
<pin name="CLK" x="2.54" y="-30.48" length="middle" direction="in"/>
<pin name="PDN_UART" x="2.54" y="-33.02" length="middle"/>
<pin name="VCC_IO" x="48.26" y="-35.56" length="middle" direction="pwr" rot="R180"/>
<pin name="STEP" x="48.26" y="-33.02" length="middle" direction="in" rot="R180"/>
<pin name="VREF" x="48.26" y="-30.48" length="middle" direction="in" rot="R180"/>
<pin name="GND" x="48.26" y="-27.94" length="middle" direction="pwr" rot="R180"/>
<pin name="DIR" x="48.26" y="-25.4" length="middle" direction="in" rot="R180"/>
<pin name="STDBY" x="48.26" y="-22.86" length="middle" direction="in" rot="R180"/>
<pin name="OA2" x="48.26" y="-20.32" length="middle" direction="out" rot="R180"/>
<pin name="VS_2" x="48.26" y="-17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="BRA" x="48.26" y="-15.24" length="middle" direction="pas" rot="R180"/>
<pin name="OA1" x="48.26" y="-12.7" length="middle" direction="out" rot="R180"/>
<pin name="NC" x="48.26" y="-10.16" length="middle" direction="nc" rot="R180"/>
<pin name="OB1" x="48.26" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="BRB" x="48.26" y="-5.08" length="middle" direction="pas" rot="R180"/>
<pin name="VS" x="48.26" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="EPAD" x="48.26" y="0" length="middle" direction="pas" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-40.64" x2="43.18" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="43.18" y1="-40.64" x2="43.18" y2="5.08" width="0.1524" layer="94"/>
<wire x1="43.18" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="20.6746" y="9.1186" size="2.083" layer="95" ratio="6">&gt;Name</text>
<text x="20.0352" y="6.5786" size="2.083" layer="96" ratio="6">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TMC2209-LA-T" prefix="U" library_version="1">
<gates>
<gate name="A" symbol="TMC2209-LA" x="0" y="0"/>
</gates>
<devices>
<device name="QFN28_5X5_3X8_EPAD_TRI" package="QFN28_5X5_3X8_EPAD_TRI">
<connects>
<connect gate="A" pin="5VOUT" pad="8"/>
<connect gate="A" pin="BRA" pad="23"/>
<connect gate="A" pin="BRB" pad="27"/>
<connect gate="A" pin="CLK" pad="13"/>
<connect gate="A" pin="CPI" pad="5"/>
<connect gate="A" pin="CPO" pad="4"/>
<connect gate="A" pin="DIAG" pad="11"/>
<connect gate="A" pin="DIR" pad="19"/>
<connect gate="A" pin="ENN" pad="2"/>
<connect gate="A" pin="EPAD" pad="29"/>
<connect gate="A" pin="GND" pad="18"/>
<connect gate="A" pin="GND_2" pad="3"/>
<connect gate="A" pin="INDEX" pad="12"/>
<connect gate="A" pin="MS1_AD0" pad="9"/>
<connect gate="A" pin="MS2_AD1" pad="10"/>
<connect gate="A" pin="NC" pad="25"/>
<connect gate="A" pin="OA1" pad="24"/>
<connect gate="A" pin="OA2" pad="21"/>
<connect gate="A" pin="OB1" pad="26"/>
<connect gate="A" pin="OB2" pad="1"/>
<connect gate="A" pin="PDN_UART" pad="14"/>
<connect gate="A" pin="SPREAD" pad="7"/>
<connect gate="A" pin="STDBY" pad="20"/>
<connect gate="A" pin="STEP" pad="16"/>
<connect gate="A" pin="VCC_IO" pad="15"/>
<connect gate="A" pin="VCP" pad="6"/>
<connect gate="A" pin="VREF" pad="17"/>
<connect gate="A" pin="VS" pad="28"/>
<connect gate="A" pin="VS_2" pad="22"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TMC2209-LA-T" constant="no"/>
<attribute name="MFR_NAME" value="Analog Devices / Trinamic" constant="no"/>
</technology>
</technologies>
</device>
<device name="QFN28_5X5_3X8_EPAD_TRI-M" package="QFN28_5X5_3X8_EPAD_TRI-M">
<connects>
<connect gate="A" pin="5VOUT" pad="8"/>
<connect gate="A" pin="BRA" pad="23"/>
<connect gate="A" pin="BRB" pad="27"/>
<connect gate="A" pin="CLK" pad="13"/>
<connect gate="A" pin="CPI" pad="5"/>
<connect gate="A" pin="CPO" pad="4"/>
<connect gate="A" pin="DIAG" pad="11"/>
<connect gate="A" pin="DIR" pad="19"/>
<connect gate="A" pin="ENN" pad="2"/>
<connect gate="A" pin="EPAD" pad="29"/>
<connect gate="A" pin="GND" pad="18"/>
<connect gate="A" pin="GND_2" pad="3"/>
<connect gate="A" pin="INDEX" pad="12"/>
<connect gate="A" pin="MS1_AD0" pad="9"/>
<connect gate="A" pin="MS2_AD1" pad="10"/>
<connect gate="A" pin="NC" pad="25"/>
<connect gate="A" pin="OA1" pad="24"/>
<connect gate="A" pin="OA2" pad="21"/>
<connect gate="A" pin="OB1" pad="26"/>
<connect gate="A" pin="OB2" pad="1"/>
<connect gate="A" pin="PDN_UART" pad="14"/>
<connect gate="A" pin="SPREAD" pad="7"/>
<connect gate="A" pin="STDBY" pad="20"/>
<connect gate="A" pin="STEP" pad="16"/>
<connect gate="A" pin="VCC_IO" pad="15"/>
<connect gate="A" pin="VCP" pad="6"/>
<connect gate="A" pin="VREF" pad="17"/>
<connect gate="A" pin="VS" pad="28"/>
<connect gate="A" pin="VS_2" pad="22"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TMC2209-LA-T" constant="no"/>
<attribute name="MFR_NAME" value="Analog Devices / Trinamic" constant="no"/>
</technology>
</technologies>
</device>
<device name="QFN28_5X5_3X8_EPAD_TRI-L" package="QFN28_5X5_3X8_EPAD_TRI-L">
<connects>
<connect gate="A" pin="5VOUT" pad="8"/>
<connect gate="A" pin="BRA" pad="23"/>
<connect gate="A" pin="BRB" pad="27"/>
<connect gate="A" pin="CLK" pad="13"/>
<connect gate="A" pin="CPI" pad="5"/>
<connect gate="A" pin="CPO" pad="4"/>
<connect gate="A" pin="DIAG" pad="11"/>
<connect gate="A" pin="DIR" pad="19"/>
<connect gate="A" pin="ENN" pad="2"/>
<connect gate="A" pin="EPAD" pad="29"/>
<connect gate="A" pin="GND" pad="18"/>
<connect gate="A" pin="GND_2" pad="3"/>
<connect gate="A" pin="INDEX" pad="12"/>
<connect gate="A" pin="MS1_AD0" pad="9"/>
<connect gate="A" pin="MS2_AD1" pad="10"/>
<connect gate="A" pin="NC" pad="25"/>
<connect gate="A" pin="OA1" pad="24"/>
<connect gate="A" pin="OA2" pad="21"/>
<connect gate="A" pin="OB1" pad="26"/>
<connect gate="A" pin="OB2" pad="1"/>
<connect gate="A" pin="PDN_UART" pad="14"/>
<connect gate="A" pin="SPREAD" pad="7"/>
<connect gate="A" pin="STDBY" pad="20"/>
<connect gate="A" pin="STEP" pad="16"/>
<connect gate="A" pin="VCC_IO" pad="15"/>
<connect gate="A" pin="VCP" pad="6"/>
<connect gate="A" pin="VREF" pad="17"/>
<connect gate="A" pin="VS" pad="28"/>
<connect gate="A" pin="VS_2" pad="22"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TMC2209-LA-T" constant="no"/>
<attribute name="MFR_NAME" value="Analog Devices / Trinamic" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Power_Symbols" urn="urn:adsk.eagle:library:16502351">
<description>&lt;B&gt;Supply &amp; Ground symbols</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:16502380/3" library_version="22">
<description>Ground (GND) Arrow</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
<text x="0" y="-2.54" size="1.778" layer="96" align="top-center">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:16502425/6" prefix="SUPPLY" uservalue="yes" library_version="22">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt; - Ground (GND) Arrow</description>
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="CATEGORY" value="Supply" constant="no"/>
<attribute name="VALUE" value="GND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="220R">
<packages>
<package name="RES_CRCW_0603">
<smd name="1" x="-0.6731" y="0" dx="0.7112" dy="0.9398" layer="1"/>
<smd name="2" x="0.6731" y="0" dx="0.7112" dy="0.9398" layer="1"/>
<wire x1="0" y1="0.4699" x2="3.7465" y2="0.4699" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.4699" x2="3.7465" y2="-0.4699" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.3655" y2="1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.3655" y2="-1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.2385" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="0.7239" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.2385" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="-0.7239" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="0" x2="-0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="-1.0795" y1="3.1369" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="3.1369" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="0" x2="0.3175" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="-0.9525" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="2.0955" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.0635" y1="-2.8829" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="-2.8829" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<text x="-15.2035" y="-7.3279" size="1.27" layer="48" ratio="6">Default Padstyle: RX28Y37D0T</text>
<text x="-18.0848" y="-9.8679" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.4079" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="3.8735" y="-0.3175" size="0.635" layer="48" ratio="4">0.037in/0.94mm</text>
<text x="-4.0424" y="3.5179" size="0.635" layer="48" ratio="4">0.065in/1.651mm</text>
<text x="-3.1828" y="-4.1529" size="0.635" layer="48" ratio="4">0.02in/0.508mm</text>
<wire x1="-0.3175" y1="-0.4699" x2="-0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="-0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="0.4699" x2="0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4191"/>
<vertex x="0.2667" y="-0.4191"/>
<vertex x="0.2667" y="0.4191"/>
<vertex x="-0.2667" y="0.4191"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4699"/>
<vertex x="0.2667" y="-0.4699"/>
<vertex x="0.2667" y="0.4699"/>
<vertex x="-0.2667" y="0.4699"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="RES_CRCW_0603-M">
<smd name="1" x="-0.8509" y="0" dx="1.0668" dy="0.9906" layer="1"/>
<smd name="2" x="0.8509" y="0" dx="1.0668" dy="0.9906" layer="1"/>
<wire x1="0" y1="0.4699" x2="3.7465" y2="0.4699" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.4699" x2="3.7465" y2="-0.4699" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.3655" y2="1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.3655" y2="-1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.2385" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="0.7239" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.2385" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="-0.7239" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="0" x2="-0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="-1.0795" y1="3.1369" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="3.1369" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="0" x2="0.3175" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="-0.9525" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="2.0955" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.0635" y1="-2.8829" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="-2.8829" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<text x="-15.2035" y="-7.3533" size="1.27" layer="48" ratio="6">Default Padstyle: RX42Y39D0T</text>
<text x="-18.0848" y="-9.8933" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.4333" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="3.8735" y="-0.3175" size="0.635" layer="48" ratio="4">0.037in/0.94mm</text>
<text x="-4.0424" y="3.5179" size="0.635" layer="48" ratio="4">0.065in/1.651mm</text>
<text x="-3.1828" y="-4.1529" size="0.635" layer="48" ratio="4">0.02in/0.508mm</text>
<wire x1="-0.3175" y1="-0.4699" x2="-0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="-0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="0.4699" x2="0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4191"/>
<vertex x="0.2667" y="-0.4191"/>
<vertex x="0.2667" y="0.4191"/>
<vertex x="-0.2667" y="0.4191"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4699"/>
<vertex x="0.2667" y="-0.4699"/>
<vertex x="0.2667" y="0.4699"/>
<vertex x="-0.2667" y="0.4699"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="RES_CRCW_0603-L">
<smd name="1" x="-0.6477" y="0" dx="0.6604" dy="0.889" layer="1"/>
<smd name="2" x="0.6477" y="0" dx="0.6604" dy="0.889" layer="1"/>
<wire x1="0" y1="0.4699" x2="3.7465" y2="0.4699" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.4699" x2="3.7465" y2="-0.4699" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.3655" y2="1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.3655" y2="-1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.2385" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="0.7239" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.2385" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="-0.7239" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="0" x2="-0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="-1.0795" y1="3.1369" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="3.1369" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="0" x2="0.3175" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="-0.9525" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="2.0955" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.0635" y1="-2.8829" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="-2.8829" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<text x="-15.2035" y="-7.3025" size="1.27" layer="48" ratio="6">Default Padstyle: RX26Y35D0T</text>
<text x="-18.0848" y="-9.8425" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.3825" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="3.8735" y="-0.3175" size="0.635" layer="48" ratio="4">0.037in/0.94mm</text>
<text x="-4.0424" y="3.5179" size="0.635" layer="48" ratio="4">0.065in/1.651mm</text>
<text x="-3.1828" y="-4.1529" size="0.635" layer="48" ratio="4">0.02in/0.508mm</text>
<wire x1="-0.3175" y1="-0.4699" x2="-0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="-0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="0.4699" x2="0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4191"/>
<vertex x="0.2667" y="-0.4191"/>
<vertex x="0.2667" y="0.4191"/>
<vertex x="-0.2667" y="0.4191"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4699"/>
<vertex x="0.2667" y="-0.4699"/>
<vertex x="0.2667" y="0.4699"/>
<vertex x="-0.2667" y="0.4699"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="RES">
<pin name="2" x="0" y="0" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="1" x="12.7" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="4.445" y1="-1.27" x2="5.715" y2="1.27" width="0.2032" layer="94"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="6.985" y1="-1.27" x2="8.255" y2="1.27" width="0.2032" layer="94"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.175" y2="1.27" width="0.2032" layer="94"/>
<wire x1="9.525" y1="-1.27" x2="10.16" y2="0" width="0.2032" layer="94"/>
<text x="-2.6131" y="-5.5499" size="3.48" layer="96" ratio="10">&gt;Value</text>
<text x="-2.1798" y="2.0701" size="3.48" layer="95" ratio="10">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CRCW0603220RFKEA" prefix="R">
<gates>
<gate name="A" symbol="RES" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="RES_CRCW_0603" package="RES_CRCW_0603">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW0603220RFKEA" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
<device name="RES_CRCW_0603-M" package="RES_CRCW_0603-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW0603220RFKEA" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
<device name="RES_CRCW_0603-L" package="RES_CRCW_0603-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW0603220RFKEA" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="res.12ohm">
<packages>
<package name="RES_WSLT2010_VIS">
<smd name="1" x="-2.4638" y="0" dx="1.1176" dy="2.794" layer="1"/>
<smd name="2" x="2.4638" y="0" dx="1.1176" dy="2.794" layer="1"/>
<wire x1="0" y1="1.397" x2="5.588" y2="1.397" width="0.1524" layer="48"/>
<wire x1="0" y1="-1.397" x2="5.588" y2="-1.397" width="0.1524" layer="48"/>
<wire x1="5.207" y1="1.397" x2="5.207" y2="2.667" width="0.1524" layer="48"/>
<wire x1="5.207" y1="-1.397" x2="5.207" y2="-2.667" width="0.1524" layer="48"/>
<wire x1="5.207" y1="1.397" x2="5.08" y2="1.651" width="0.1524" layer="48"/>
<wire x1="5.207" y1="1.397" x2="5.334" y2="1.651" width="0.1524" layer="48"/>
<wire x1="5.08" y1="1.651" x2="5.334" y2="1.651" width="0.1524" layer="48"/>
<wire x1="5.207" y1="-1.397" x2="5.08" y2="-1.651" width="0.1524" layer="48"/>
<wire x1="5.207" y1="-1.397" x2="5.334" y2="-1.651" width="0.1524" layer="48"/>
<wire x1="5.08" y1="-1.651" x2="5.334" y2="-1.651" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="0" x2="-2.667" y2="4.318" width="0.1524" layer="48"/>
<wire x1="2.667" y1="0" x2="2.667" y2="4.318" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="3.937" x2="2.667" y2="3.937" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="3.937" x2="-2.413" y2="4.064" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="3.937" x2="-2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="-2.413" y1="4.064" x2="-2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="2.667" y1="3.937" x2="2.413" y2="4.064" width="0.1524" layer="48"/>
<wire x1="2.667" y1="3.937" x2="2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="2.413" y1="4.064" x2="2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="1.905" y1="0" x2="1.905" y2="-4.318" width="0.1524" layer="48"/>
<wire x1="2.667" y1="0" x2="2.667" y2="-4.318" width="0.1524" layer="48"/>
<wire x1="1.905" y1="-3.937" x2="0.635" y2="-3.937" width="0.1524" layer="48"/>
<wire x1="2.667" y1="-3.937" x2="3.937" y2="-3.937" width="0.1524" layer="48"/>
<wire x1="1.905" y1="-3.937" x2="1.651" y2="-3.81" width="0.1524" layer="48"/>
<wire x1="1.905" y1="-3.937" x2="1.651" y2="-4.064" width="0.1524" layer="48"/>
<wire x1="1.651" y1="-3.81" x2="1.651" y2="-4.064" width="0.1524" layer="48"/>
<wire x1="2.667" y1="-3.937" x2="2.921" y2="-3.81" width="0.1524" layer="48"/>
<wire x1="2.667" y1="-3.937" x2="2.921" y2="-4.064" width="0.1524" layer="48"/>
<wire x1="2.921" y1="-3.81" x2="2.921" y2="-4.064" width="0.1524" layer="48"/>
<text x="-15.7797" y="-8.255" size="1.27" layer="48" ratio="6">Default Padstyle: RX44Y110D0T</text>
<text x="-14.8136" y="-9.779" size="1.27" layer="48" ratio="6">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8136" y="-11.303" size="1.27" layer="48" ratio="6">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="5.715" y="-0.3175" size="0.635" layer="48" ratio="4">0.11in/2.794mm</text>
<text x="-3.7543" y="4.445" size="0.635" layer="48" ratio="4">0.21in/5.334mm</text>
<text x="-1.4683" y="-5.08" size="0.635" layer="48" ratio="4">0.03in/0.762mm</text>
<wire x1="-1.5975" y1="-1.524" x2="1.5975" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.5975" y1="1.524" x2="-1.5975" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.397" x2="-1.905" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="1.397" x2="-2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="-1.397" x2="-1.905" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="1.905" y1="1.397" x2="1.905" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-1.397" x2="2.667" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="1.397" x2="1.905" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="-1.397" x2="2.667" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="1.397" x2="-2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="51"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-1.8542" y="-1.3462"/>
<vertex x="1.8542" y="-1.3462"/>
<vertex x="1.8542" y="1.3462"/>
<vertex x="-1.8542" y="1.3462"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-1.8542" y="-1.397"/>
<vertex x="1.8542" y="-1.397"/>
<vertex x="1.8542" y="1.397"/>
<vertex x="-1.8542" y="1.397"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="RES_WSLT2010_VIS-M">
<smd name="1" x="-2.5654" y="0" dx="1.3208" dy="2.8448" layer="1"/>
<smd name="2" x="2.5654" y="0" dx="1.3208" dy="2.8448" layer="1"/>
<wire x1="0" y1="1.397" x2="5.588" y2="1.397" width="0.1524" layer="48"/>
<wire x1="0" y1="-1.397" x2="5.588" y2="-1.397" width="0.1524" layer="48"/>
<wire x1="5.207" y1="1.397" x2="5.207" y2="2.667" width="0.1524" layer="48"/>
<wire x1="5.207" y1="-1.397" x2="5.207" y2="-2.667" width="0.1524" layer="48"/>
<wire x1="5.207" y1="1.397" x2="5.08" y2="1.651" width="0.1524" layer="48"/>
<wire x1="5.207" y1="1.397" x2="5.334" y2="1.651" width="0.1524" layer="48"/>
<wire x1="5.08" y1="1.651" x2="5.334" y2="1.651" width="0.1524" layer="48"/>
<wire x1="5.207" y1="-1.397" x2="5.08" y2="-1.651" width="0.1524" layer="48"/>
<wire x1="5.207" y1="-1.397" x2="5.334" y2="-1.651" width="0.1524" layer="48"/>
<wire x1="5.08" y1="-1.651" x2="5.334" y2="-1.651" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="0" x2="-2.667" y2="4.318" width="0.1524" layer="48"/>
<wire x1="2.667" y1="0" x2="2.667" y2="4.318" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="3.937" x2="2.667" y2="3.937" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="3.937" x2="-2.413" y2="4.064" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="3.937" x2="-2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="-2.413" y1="4.064" x2="-2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="2.667" y1="3.937" x2="2.413" y2="4.064" width="0.1524" layer="48"/>
<wire x1="2.667" y1="3.937" x2="2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="2.413" y1="4.064" x2="2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="1.905" y1="0" x2="1.905" y2="-4.318" width="0.1524" layer="48"/>
<wire x1="2.667" y1="0" x2="2.667" y2="-4.318" width="0.1524" layer="48"/>
<wire x1="1.905" y1="-3.937" x2="0.635" y2="-3.937" width="0.1524" layer="48"/>
<wire x1="2.667" y1="-3.937" x2="3.937" y2="-3.937" width="0.1524" layer="48"/>
<wire x1="1.905" y1="-3.937" x2="1.651" y2="-3.81" width="0.1524" layer="48"/>
<wire x1="1.905" y1="-3.937" x2="1.651" y2="-4.064" width="0.1524" layer="48"/>
<wire x1="1.651" y1="-3.81" x2="1.651" y2="-4.064" width="0.1524" layer="48"/>
<wire x1="2.667" y1="-3.937" x2="2.921" y2="-3.81" width="0.1524" layer="48"/>
<wire x1="2.667" y1="-3.937" x2="2.921" y2="-4.064" width="0.1524" layer="48"/>
<wire x1="2.921" y1="-3.81" x2="2.921" y2="-4.064" width="0.1524" layer="48"/>
<text x="-15.7797" y="-8.2804" size="1.27" layer="48" ratio="6">Default Padstyle: RX52Y112D0T</text>
<text x="-14.8136" y="-9.8044" size="1.27" layer="48" ratio="6">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8136" y="-11.3284" size="1.27" layer="48" ratio="6">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="5.715" y="-0.3175" size="0.635" layer="48" ratio="4">0.11in/2.794mm</text>
<text x="-3.7543" y="4.445" size="0.635" layer="48" ratio="4">0.21in/5.334mm</text>
<text x="-1.4683" y="-5.08" size="0.635" layer="48" ratio="4">0.03in/0.762mm</text>
<wire x1="-1.5882" y1="-1.524" x2="1.5882" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.5882" y1="1.524" x2="-1.5882" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.397" x2="-1.905" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="1.397" x2="-2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="-1.397" x2="-1.905" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="1.905" y1="1.397" x2="1.905" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-1.397" x2="2.667" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="1.397" x2="1.905" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="-1.397" x2="2.667" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="1.397" x2="-2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="51"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-1.8542" y="-1.3462"/>
<vertex x="1.8542" y="-1.3462"/>
<vertex x="1.8542" y="1.3462"/>
<vertex x="-1.8542" y="1.3462"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-1.8542" y="-1.397"/>
<vertex x="1.8542" y="-1.397"/>
<vertex x="1.8542" y="1.397"/>
<vertex x="-1.8542" y="1.397"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="RES_WSLT2010_VIS-L">
<smd name="1" x="-2.3622" y="0" dx="0.9144" dy="2.7432" layer="1"/>
<smd name="2" x="2.3622" y="0" dx="0.9144" dy="2.7432" layer="1"/>
<wire x1="0" y1="1.397" x2="5.588" y2="1.397" width="0.1524" layer="48"/>
<wire x1="0" y1="-1.397" x2="5.588" y2="-1.397" width="0.1524" layer="48"/>
<wire x1="5.207" y1="1.397" x2="5.207" y2="2.667" width="0.1524" layer="48"/>
<wire x1="5.207" y1="-1.397" x2="5.207" y2="-2.667" width="0.1524" layer="48"/>
<wire x1="5.207" y1="1.397" x2="5.08" y2="1.651" width="0.1524" layer="48"/>
<wire x1="5.207" y1="1.397" x2="5.334" y2="1.651" width="0.1524" layer="48"/>
<wire x1="5.08" y1="1.651" x2="5.334" y2="1.651" width="0.1524" layer="48"/>
<wire x1="5.207" y1="-1.397" x2="5.08" y2="-1.651" width="0.1524" layer="48"/>
<wire x1="5.207" y1="-1.397" x2="5.334" y2="-1.651" width="0.1524" layer="48"/>
<wire x1="5.08" y1="-1.651" x2="5.334" y2="-1.651" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="0" x2="-2.667" y2="4.318" width="0.1524" layer="48"/>
<wire x1="2.667" y1="0" x2="2.667" y2="4.318" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="3.937" x2="2.667" y2="3.937" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="3.937" x2="-2.413" y2="4.064" width="0.1524" layer="48"/>
<wire x1="-2.667" y1="3.937" x2="-2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="-2.413" y1="4.064" x2="-2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="2.667" y1="3.937" x2="2.413" y2="4.064" width="0.1524" layer="48"/>
<wire x1="2.667" y1="3.937" x2="2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="2.413" y1="4.064" x2="2.413" y2="3.81" width="0.1524" layer="48"/>
<wire x1="1.905" y1="0" x2="1.905" y2="-4.318" width="0.1524" layer="48"/>
<wire x1="2.667" y1="0" x2="2.667" y2="-4.318" width="0.1524" layer="48"/>
<wire x1="1.905" y1="-3.937" x2="0.635" y2="-3.937" width="0.1524" layer="48"/>
<wire x1="2.667" y1="-3.937" x2="3.937" y2="-3.937" width="0.1524" layer="48"/>
<wire x1="1.905" y1="-3.937" x2="1.651" y2="-3.81" width="0.1524" layer="48"/>
<wire x1="1.905" y1="-3.937" x2="1.651" y2="-4.064" width="0.1524" layer="48"/>
<wire x1="1.651" y1="-3.81" x2="1.651" y2="-4.064" width="0.1524" layer="48"/>
<wire x1="2.667" y1="-3.937" x2="2.921" y2="-3.81" width="0.1524" layer="48"/>
<wire x1="2.667" y1="-3.937" x2="2.921" y2="-4.064" width="0.1524" layer="48"/>
<wire x1="2.921" y1="-3.81" x2="2.921" y2="-4.064" width="0.1524" layer="48"/>
<text x="-15.7797" y="-8.2296" size="1.27" layer="48" ratio="6">Default Padstyle: RX36Y108D0T</text>
<text x="-14.8136" y="-9.7536" size="1.27" layer="48" ratio="6">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8136" y="-11.2776" size="1.27" layer="48" ratio="6">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="5.715" y="-0.3175" size="0.635" layer="48" ratio="4">0.11in/2.794mm</text>
<text x="-3.7543" y="4.445" size="0.635" layer="48" ratio="4">0.21in/5.334mm</text>
<text x="-1.4683" y="-5.08" size="0.635" layer="48" ratio="4">0.03in/0.762mm</text>
<wire x1="-1.6092" y1="-1.524" x2="1.6092" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.6092" y1="1.524" x2="-1.6092" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.397" x2="-1.905" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="1.397" x2="-2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="-1.397" x2="-1.905" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="1.905" y1="1.397" x2="1.905" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-1.397" x2="2.667" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="1.397" x2="1.905" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="-1.397" x2="2.667" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="2.667" y1="1.397" x2="-2.667" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="51"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-1.8542" y="-1.3462"/>
<vertex x="1.8542" y="-1.3462"/>
<vertex x="1.8542" y="1.3462"/>
<vertex x="-1.8542" y="1.3462"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-1.8542" y="-1.397"/>
<vertex x="1.8542" y="-1.397"/>
<vertex x="1.8542" y="1.397"/>
<vertex x="-1.8542" y="1.397"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="RES">
<pin name="1" x="0" y="0" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="12.7" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="4.445" y1="-1.27" x2="5.715" y2="1.27" width="0.2032" layer="94"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="6.985" y1="-1.27" x2="8.255" y2="1.27" width="0.2032" layer="94"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.175" y2="1.27" width="0.2032" layer="94"/>
<wire x1="9.525" y1="-1.27" x2="10.16" y2="0" width="0.2032" layer="94"/>
<text x="-2.6131" y="-5.5499" size="3.48" layer="96" ratio="10">&gt;Value</text>
<text x="-2.1798" y="2.0701" size="3.48" layer="95" ratio="10">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="WSLT2010R1200FEB18" prefix="R">
<gates>
<gate name="A" symbol="RES" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="RES_WSLT2010_VIS" package="RES_WSLT2010_VIS">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="WSLT2010R1200FEB18" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
<device name="RES_WSLT2010_VIS-M" package="RES_WSLT2010_VIS-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="WSLT2010R1200FEB18" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
<device name="RES_WSLT2010_VIS-L" package="RES_WSLT2010_VIS-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="WSLT2010R1200FEB18" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CRCW06031K00FKEA">
<packages>
<package name="RESC1508X50N">
<text x="-1.44" y="-0.82" size="0.5" layer="27" align="top-left">&gt;VALUE</text>
<text x="-1.44" y="0.82" size="0.5" layer="25">&gt;NAME</text>
<wire x1="0.83" y1="-0.47" x2="-0.83" y2="-0.47" width="0.127" layer="51"/>
<wire x1="0.83" y1="0.47" x2="-0.83" y2="0.47" width="0.127" layer="51"/>
<wire x1="0.83" y1="-0.47" x2="0.83" y2="0.47" width="0.127" layer="51"/>
<wire x1="-0.83" y1="-0.47" x2="-0.83" y2="0.47" width="0.127" layer="51"/>
<wire x1="-1.444" y1="-0.74" x2="1.444" y2="-0.74" width="0.05" layer="39"/>
<wire x1="-1.444" y1="0.74" x2="1.444" y2="0.74" width="0.05" layer="39"/>
<wire x1="-1.444" y1="-0.74" x2="-1.444" y2="0.74" width="0.05" layer="39"/>
<wire x1="1.444" y1="-0.74" x2="1.444" y2="0.74" width="0.05" layer="39"/>
<smd name="1" x="-0.765" y="0" dx="0.86" dy="0.98" layer="1"/>
<smd name="2" x="0.765" y="0" dx="0.86" dy="0.98" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="CRCW06031K00FKEA">
<wire x1="-5.08" y1="0" x2="-4.445" y2="1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-3.175" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-3.175" y1="-1.905" x2="-1.905" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.905" y1="1.905" x2="-0.635" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-1.905" x2="0.635" y2="1.905" width="0.254" layer="94"/>
<wire x1="0.635" y1="1.905" x2="1.905" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.905" y1="-1.905" x2="3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="3.175" y1="1.905" x2="4.445" y2="-1.905" width="0.254" layer="94"/>
<wire x1="4.445" y1="-1.905" x2="5.08" y2="0" width="0.254" layer="94"/>
<text x="-7.624440625" y="2.54148125" size="2.54148125" layer="95">&gt;NAME</text>
<text x="-7.62996875" y="-5.086640625" size="2.54331875" layer="96">&gt;VALUE</text>
<pin name="1" x="-10.16" y="0" visible="off" length="middle" direction="pas"/>
<pin name="2" x="10.16" y="0" visible="off" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CRCW06031K00FKEA" prefix="R">
<gates>
<gate name="G$1" symbol="CRCW06031K00FKEA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC1508X50N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="100nF_Cap">
<packages>
<package name="CAP_CL10_SAM">
<smd name="1" x="-0.8278" y="0" dx="0.6556" dy="0.8" layer="1"/>
<smd name="2" x="0.8278" y="0" dx="0.6556" dy="0.8" layer="1"/>
<wire x1="0" y1="0.4" x2="3.721" y2="0.4" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.4" x2="3.721" y2="-0.4" width="0.1524" layer="48"/>
<wire x1="3.34" y1="0.4" x2="3.34" y2="1.67" width="0.1524" layer="48"/>
<wire x1="3.34" y1="-0.4" x2="3.34" y2="-1.67" width="0.1524" layer="48"/>
<wire x1="3.34" y1="0.4" x2="3.213" y2="0.654" width="0.1524" layer="48"/>
<wire x1="3.34" y1="0.4" x2="3.467" y2="0.654" width="0.1524" layer="48"/>
<wire x1="3.213" y1="0.654" x2="3.467" y2="0.654" width="0.1524" layer="48"/>
<wire x1="3.34" y1="-0.4" x2="3.213" y2="-0.654" width="0.1524" layer="48"/>
<wire x1="3.34" y1="-0.4" x2="3.467" y2="-0.654" width="0.1524" layer="48"/>
<wire x1="3.213" y1="-0.654" x2="3.467" y2="-0.654" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="0" x2="-0.8" y2="3.321" width="0.1524" layer="48"/>
<wire x1="0.8" y1="0" x2="0.8" y2="3.321" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="2.94" x2="-2.07" y2="2.94" width="0.1524" layer="48"/>
<wire x1="0.8" y1="2.94" x2="2.07" y2="2.94" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="2.94" x2="-1.054" y2="3.067" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="2.94" x2="-1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="-1.054" y1="3.067" x2="-1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="0.8" y1="2.94" x2="1.054" y2="3.067" width="0.1524" layer="48"/>
<wire x1="0.8" y1="2.94" x2="1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="1.054" y1="3.067" x2="1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="0.5" y1="0" x2="0.5" y2="-3.321" width="0.1524" layer="48"/>
<wire x1="0.8" y1="0" x2="0.8" y2="-3.321" width="0.1524" layer="48"/>
<wire x1="0.5" y1="-2.94" x2="-0.77" y2="-2.94" width="0.1524" layer="48"/>
<wire x1="0.8" y1="-2.94" x2="2.07" y2="-2.94" width="0.1524" layer="48"/>
<wire x1="0.5" y1="-2.94" x2="0.246" y2="-2.813" width="0.1524" layer="48"/>
<wire x1="0.5" y1="-2.94" x2="0.246" y2="-3.067" width="0.1524" layer="48"/>
<wire x1="0.246" y1="-2.813" x2="0.246" y2="-3.067" width="0.1524" layer="48"/>
<wire x1="0.8" y1="-2.94" x2="1.054" y2="-2.813" width="0.1524" layer="48"/>
<wire x1="0.8" y1="-2.94" x2="1.054" y2="-3.067" width="0.1524" layer="48"/>
<wire x1="1.054" y1="-2.813" x2="1.054" y2="-3.067" width="0.1524" layer="48"/>
<text x="-18.0848" y="-7.258" size="1.27" layer="48" ratio="6">Default Padstyle: RX25p81Y31p5D0T</text>
<text x="-18.0848" y="-9.798" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.338" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="3.848" y="-0.3175" size="0.635" layer="48" ratio="4">0.031in/0.8mm</text>
<text x="-3.4661" y="3.448" size="0.635" layer="48" ratio="4">0.063in/1.6mm</text>
<text x="-2.8161" y="-4.083" size="0.635" layer="48" ratio="4">0.012in/0.3mm</text>
<wire x1="-0.1925" y1="-0.527" x2="0.1925" y2="-0.527" width="0.1524" layer="21"/>
<wire x1="0.1925" y1="0.527" x2="-0.1925" y2="0.527" width="0.1524" layer="21"/>
<wire x1="-0.5" y1="-0.4" x2="-0.5" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.5" y1="0.4" x2="-0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.5" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.5" y1="0.4" x2="0.5" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.5" y1="-0.4" x2="0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.5" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.1524" layer="51"/>
<polygon width="0.0254" layer="41" pour="solid">
<vertex x="-0.4492" y="-0.3492"/>
<vertex x="0.4492" y="-0.3492"/>
<vertex x="0.4492" y="0.3492"/>
<vertex x="-0.4492" y="0.3492"/>
</polygon>
<polygon width="0.0254" layer="41" pour="solid">
<vertex x="-0.4492" y="-0.4"/>
<vertex x="0.4492" y="-0.4"/>
<vertex x="0.4492" y="0.4"/>
<vertex x="-0.4492" y="0.4"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="CAP_CL10_SAM-M">
<smd name="1" x="-0.9294" y="0" dx="0.8588" dy="0.8508" layer="1"/>
<smd name="2" x="0.9294" y="0" dx="0.8588" dy="0.8508" layer="1"/>
<wire x1="0" y1="0.4" x2="3.721" y2="0.4" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.4" x2="3.721" y2="-0.4" width="0.1524" layer="48"/>
<wire x1="3.34" y1="0.4" x2="3.34" y2="1.67" width="0.1524" layer="48"/>
<wire x1="3.34" y1="-0.4" x2="3.34" y2="-1.67" width="0.1524" layer="48"/>
<wire x1="3.34" y1="0.4" x2="3.213" y2="0.654" width="0.1524" layer="48"/>
<wire x1="3.34" y1="0.4" x2="3.467" y2="0.654" width="0.1524" layer="48"/>
<wire x1="3.213" y1="0.654" x2="3.467" y2="0.654" width="0.1524" layer="48"/>
<wire x1="3.34" y1="-0.4" x2="3.213" y2="-0.654" width="0.1524" layer="48"/>
<wire x1="3.34" y1="-0.4" x2="3.467" y2="-0.654" width="0.1524" layer="48"/>
<wire x1="3.213" y1="-0.654" x2="3.467" y2="-0.654" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="0" x2="-0.8" y2="3.321" width="0.1524" layer="48"/>
<wire x1="0.8" y1="0" x2="0.8" y2="3.321" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="2.94" x2="-2.07" y2="2.94" width="0.1524" layer="48"/>
<wire x1="0.8" y1="2.94" x2="2.07" y2="2.94" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="2.94" x2="-1.054" y2="3.067" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="2.94" x2="-1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="-1.054" y1="3.067" x2="-1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="0.8" y1="2.94" x2="1.054" y2="3.067" width="0.1524" layer="48"/>
<wire x1="0.8" y1="2.94" x2="1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="1.054" y1="3.067" x2="1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="0.5" y1="0" x2="0.5" y2="-3.321" width="0.1524" layer="48"/>
<wire x1="0.8" y1="0" x2="0.8" y2="-3.321" width="0.1524" layer="48"/>
<wire x1="0.5" y1="-2.94" x2="-0.77" y2="-2.94" width="0.1524" layer="48"/>
<wire x1="0.8" y1="-2.94" x2="2.07" y2="-2.94" width="0.1524" layer="48"/>
<wire x1="0.5" y1="-2.94" x2="0.246" y2="-2.813" width="0.1524" layer="48"/>
<wire x1="0.5" y1="-2.94" x2="0.246" y2="-3.067" width="0.1524" layer="48"/>
<wire x1="0.246" y1="-2.813" x2="0.246" y2="-3.067" width="0.1524" layer="48"/>
<wire x1="0.8" y1="-2.94" x2="1.054" y2="-2.813" width="0.1524" layer="48"/>
<wire x1="0.8" y1="-2.94" x2="1.054" y2="-3.067" width="0.1524" layer="48"/>
<wire x1="1.054" y1="-2.813" x2="1.054" y2="-3.067" width="0.1524" layer="48"/>
<text x="-18.0848" y="-7.2834" size="1.27" layer="48" ratio="6">Default Padstyle: RX33p81Y33p5D0T</text>
<text x="-18.0848" y="-9.8234" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.3634" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="3.848" y="-0.3175" size="0.635" layer="48" ratio="4">0.031in/0.8mm</text>
<text x="-3.4661" y="3.448" size="0.635" layer="48" ratio="4">0.063in/1.6mm</text>
<text x="-2.8161" y="-4.083" size="0.635" layer="48" ratio="4">0.012in/0.3mm</text>
<wire x1="-0.1832" y1="-0.527" x2="0.1832" y2="-0.527" width="0.1524" layer="21"/>
<wire x1="0.1832" y1="0.527" x2="-0.1832" y2="0.527" width="0.1524" layer="21"/>
<wire x1="-2.1208" y1="0" x2="-2.2732" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.2732" y1="0" x2="-2.1208" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-0.5" y1="-0.4" x2="-0.5" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.5" y1="0.4" x2="-0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.5" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.5" y1="0.4" x2="0.5" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.5" y1="-0.4" x2="0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.5" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="-0.7262" y1="0" x2="-0.8786" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-0.8786" y1="0" x2="-0.7262" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.4492" y="-0.3492"/>
<vertex x="0.4492" y="-0.3492"/>
<vertex x="0.4492" y="0.3492"/>
<vertex x="-0.4492" y="0.3492"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.4492" y="-0.4"/>
<vertex x="0.4492" y="-0.4"/>
<vertex x="0.4492" y="0.4"/>
<vertex x="-0.4492" y="0.4"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="CAP_CL10_SAM-L">
<smd name="1" x="-0.7262" y="0" dx="0.4524" dy="0.7492" layer="1"/>
<smd name="2" x="0.7262" y="0" dx="0.4524" dy="0.7492" layer="1"/>
<wire x1="0" y1="0.4" x2="3.721" y2="0.4" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.4" x2="3.721" y2="-0.4" width="0.1524" layer="48"/>
<wire x1="3.34" y1="0.4" x2="3.34" y2="1.67" width="0.1524" layer="48"/>
<wire x1="3.34" y1="-0.4" x2="3.34" y2="-1.67" width="0.1524" layer="48"/>
<wire x1="3.34" y1="0.4" x2="3.213" y2="0.654" width="0.1524" layer="48"/>
<wire x1="3.34" y1="0.4" x2="3.467" y2="0.654" width="0.1524" layer="48"/>
<wire x1="3.213" y1="0.654" x2="3.467" y2="0.654" width="0.1524" layer="48"/>
<wire x1="3.34" y1="-0.4" x2="3.213" y2="-0.654" width="0.1524" layer="48"/>
<wire x1="3.34" y1="-0.4" x2="3.467" y2="-0.654" width="0.1524" layer="48"/>
<wire x1="3.213" y1="-0.654" x2="3.467" y2="-0.654" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="0" x2="-0.8" y2="3.321" width="0.1524" layer="48"/>
<wire x1="0.8" y1="0" x2="0.8" y2="3.321" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="2.94" x2="-2.07" y2="2.94" width="0.1524" layer="48"/>
<wire x1="0.8" y1="2.94" x2="2.07" y2="2.94" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="2.94" x2="-1.054" y2="3.067" width="0.1524" layer="48"/>
<wire x1="-0.8" y1="2.94" x2="-1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="-1.054" y1="3.067" x2="-1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="0.8" y1="2.94" x2="1.054" y2="3.067" width="0.1524" layer="48"/>
<wire x1="0.8" y1="2.94" x2="1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="1.054" y1="3.067" x2="1.054" y2="2.813" width="0.1524" layer="48"/>
<wire x1="0.5" y1="0" x2="0.5" y2="-3.321" width="0.1524" layer="48"/>
<wire x1="0.8" y1="0" x2="0.8" y2="-3.321" width="0.1524" layer="48"/>
<wire x1="0.5" y1="-2.94" x2="-0.77" y2="-2.94" width="0.1524" layer="48"/>
<wire x1="0.8" y1="-2.94" x2="2.07" y2="-2.94" width="0.1524" layer="48"/>
<wire x1="0.5" y1="-2.94" x2="0.246" y2="-2.813" width="0.1524" layer="48"/>
<wire x1="0.5" y1="-2.94" x2="0.246" y2="-3.067" width="0.1524" layer="48"/>
<wire x1="0.246" y1="-2.813" x2="0.246" y2="-3.067" width="0.1524" layer="48"/>
<wire x1="0.8" y1="-2.94" x2="1.054" y2="-2.813" width="0.1524" layer="48"/>
<wire x1="0.8" y1="-2.94" x2="1.054" y2="-3.067" width="0.1524" layer="48"/>
<wire x1="1.054" y1="-2.813" x2="1.054" y2="-3.067" width="0.1524" layer="48"/>
<text x="-18.0848" y="-7.2326" size="1.27" layer="48" ratio="6">Default Padstyle: RX17p81Y29p5D0T</text>
<text x="-18.0848" y="-9.7726" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.3126" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="3.848" y="-0.3175" size="0.635" layer="48" ratio="4">0.031in/0.8mm</text>
<text x="-3.4661" y="3.448" size="0.635" layer="48" ratio="4">0.063in/1.6mm</text>
<text x="-2.8161" y="-4.083" size="0.635" layer="48" ratio="4">0.012in/0.3mm</text>
<wire x1="-0.2042" y1="-0.527" x2="0.2042" y2="-0.527" width="0.1524" layer="21"/>
<wire x1="0.2042" y1="0.527" x2="-0.2042" y2="0.527" width="0.1524" layer="21"/>
<wire x1="-1.7144" y1="0" x2="-1.8668" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.8668" y1="0" x2="-1.7144" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-0.5" y1="-0.4" x2="-0.5" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.5" y1="0.4" x2="-0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.5" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.5" y1="0.4" x2="0.5" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.5" y1="-0.4" x2="0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.5" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.1524" layer="51"/>
<wire x1="-0.523" y1="0" x2="-0.6754" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-0.6754" y1="0" x2="-0.523" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.4492" y="-0.3492"/>
<vertex x="0.4492" y="-0.3492"/>
<vertex x="0.4492" y="0.3492"/>
<vertex x="-0.4492" y="0.3492"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.4492" y="-0.4"/>
<vertex x="0.4492" y="-0.4"/>
<vertex x="0.4492" y="0.4"/>
<vertex x="-0.4492" y="0.4"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="CAPH">
<pin name="2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="3.4798" y1="-1.905" x2="3.4798" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="-1.905" x2="4.1148" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="5.08" y2="0" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<text x="-5.1531" y="-5.5499" size="3.48" layer="96" ratio="10">&gt;Value</text>
<text x="-4.0848" y="2.0701" size="3.48" layer="95" ratio="10">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CL10B104KB8NNNC" prefix="C">
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="CAP_CL10_SAM" package="CAP_CL10_SAM">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CL10B104KB8NNNC" constant="no"/>
<attribute name="MFR_NAME" value="Samsung" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_CL10_SAM-M" package="CAP_CL10_SAM-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CL10B104KB8NNNC" constant="no"/>
<attribute name="MFR_NAME" value="Samsung" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_CL10_SAM-L" package="CAP_CL10_SAM-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CL10B104KB8NNNC" constant="no"/>
<attribute name="MFR_NAME" value="Samsung" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="WL-SMCW_0603BLED">
<packages>
<package name="WL-SMCW_0603">
<description>&lt;B&gt;WL-SMCW SMT Mono-color Chip LED Waterclear
&lt;Br&gt;&lt;Br&gt;&lt;/B&gt;Size: 0603, SMT, 2pins
&lt;Br&gt;1.6x0.8x0.7mm(LXWXH)</description>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.1" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.1" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.1" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.1" layer="51"/>
<wire x1="0.11" y1="0.14" x2="0.11" y2="-0.15" width="0.1" layer="21"/>
<wire x1="0.11" y1="-0.15" x2="-0.13" y2="0" width="0.1" layer="21"/>
<wire x1="-0.13" y1="0" x2="0.11" y2="0.14" width="0.1" layer="21"/>
<wire x1="-0.1" y1="0.5" x2="0.1" y2="0.5" width="0.2" layer="21"/>
<wire x1="0.1" y1="-0.5" x2="-0.1" y2="-0.5" width="0.2" layer="21"/>
<wire x1="0.11" y1="0.14" x2="0.11" y2="-0.15" width="0.1" layer="51"/>
<wire x1="0.11" y1="-0.15" x2="-0.13" y2="0" width="0.1" layer="51"/>
<wire x1="-0.13" y1="0" x2="0.11" y2="0.14" width="0.1" layer="51"/>
<text x="1.6" y="-0.3" size="0.6096" layer="21">+</text>
<text x="1.6" y="-0.3" size="0.6096" layer="51">+</text>
<text x="0" y="1" size="0.8128" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.7" size="0.8128" layer="27" align="bottom-center">&gt;VALUE</text>
<polygon width="0.1" layer="39" pour="solid">
<vertex x="-1.4" y="-0.7"/>
<vertex x="1.4" y="-0.7"/>
<vertex x="1.4" y="0.7"/>
<vertex x="-1.4" y="0.7"/>
</polygon>
<smd name="1" x="-0.8" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="2" x="0.8" y="0" dx="0.8" dy="0.8" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="LED">
<description>LED</description>
<text x="-1.988" y="3.972" size="1.27" layer="95">&gt;NAME</text>
<text x="-2.628" y="-3.928" size="1.27" layer="96">&gt;VALUE</text>
<text x="3.08" y="-1.74" size="1.27" layer="94">+</text>
<wire x1="2.54" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.778" y1="2.032" x2="0.381" y2="3.429" width="0.1524" layer="94"/>
<wire x1="0.635" y1="1.905" x2="-0.762" y2="3.302" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<polygon width="0.1524" layer="94" pour="solid">
<vertex x="0.381" y="3.429"/>
<vertex x="0.762" y="2.54"/>
<vertex x="1.27" y="3.048"/>
</polygon>
<polygon width="0.1524" layer="94" pour="solid">
<vertex x="-0.762" y="3.302"/>
<vertex x="-0.381" y="2.413"/>
<vertex x="0.127" y="2.921"/>
</polygon>
<pin name="-" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
<pin name="+" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="WL-SMCW_0603" prefix="D">
<gates>
<gate name="G$1" symbol="LED" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="WL-SMCW_0603">
<connects>
<connect gate="G$1" pin="+" pad="2"/>
<connect gate="G$1" pin="-" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="2025-03-22_00-16-48_Library">
<packages>
<package name="RES_CRCW_0603_VIS">
<smd name="1" x="-0.7493" y="0" dx="0.8636" dy="0.9398" layer="1"/>
<smd name="2" x="0.7493" y="0" dx="0.8636" dy="0.9398" layer="1"/>
<wire x1="0" y1="0.4699" x2="3.7465" y2="0.4699" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.4699" x2="3.7465" y2="-0.4699" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.3655" y2="1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.3655" y2="-1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.2385" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="0.7239" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.2385" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="-0.7239" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="0" x2="-0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="-1.0795" y1="3.1369" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="3.1369" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="0" x2="0.3175" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="-0.9525" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="2.0955" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.0635" y1="-2.8829" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="-2.8829" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<text x="-15.2035" y="-7.3279" size="1.27" layer="48" ratio="6">Default Padstyle: RX34Y37D0T</text>
<text x="-18.0848" y="-9.8679" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.4079" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="3.8735" y="-0.3175" size="0.635" layer="48" ratio="4">0.037in/0.94mm</text>
<text x="-4.0424" y="3.5179" size="0.635" layer="48" ratio="4">0.065in/1.651mm</text>
<text x="-3.1828" y="-4.1529" size="0.635" layer="48" ratio="4">0.02in/0.508mm</text>
<wire x1="-0.3175" y1="-0.4699" x2="-0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="-0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="0.4699" x2="0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4191"/>
<vertex x="0.2667" y="-0.4191"/>
<vertex x="0.2667" y="0.4191"/>
<vertex x="-0.2667" y="0.4191"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4699"/>
<vertex x="0.2667" y="-0.4699"/>
<vertex x="0.2667" y="0.4699"/>
<vertex x="-0.2667" y="0.4699"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="RES_CRCW_0603_VIS-M">
<smd name="1" x="-0.8509" y="0" dx="1.0668" dy="0.9906" layer="1"/>
<smd name="2" x="0.8509" y="0" dx="1.0668" dy="0.9906" layer="1"/>
<wire x1="0" y1="0.4699" x2="3.7465" y2="0.4699" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.4699" x2="3.7465" y2="-0.4699" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.3655" y2="1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.3655" y2="-1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.2385" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="0.7239" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.2385" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="-0.7239" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="0" x2="-0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="-1.0795" y1="3.1369" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="3.1369" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="0" x2="0.3175" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="-0.9525" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="2.0955" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.0635" y1="-2.8829" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="-2.8829" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<text x="-15.2035" y="-7.3533" size="1.27" layer="48" ratio="6">Default Padstyle: RX42Y39D0T</text>
<text x="-18.0848" y="-9.8933" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.4333" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="3.8735" y="-0.3175" size="0.635" layer="48" ratio="4">0.037in/0.94mm</text>
<text x="-4.0424" y="3.5179" size="0.635" layer="48" ratio="4">0.065in/1.651mm</text>
<text x="-3.1828" y="-4.1529" size="0.635" layer="48" ratio="4">0.02in/0.508mm</text>
<wire x1="-0.3175" y1="-0.4699" x2="-0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="-0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="0.4699" x2="0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4191"/>
<vertex x="0.2667" y="-0.4191"/>
<vertex x="0.2667" y="0.4191"/>
<vertex x="-0.2667" y="0.4191"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4699"/>
<vertex x="0.2667" y="-0.4699"/>
<vertex x="0.2667" y="0.4699"/>
<vertex x="-0.2667" y="0.4699"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="RES_CRCW_0603_VIS-L">
<smd name="1" x="-0.6477" y="0" dx="0.6604" dy="0.889" layer="1"/>
<smd name="2" x="0.6477" y="0" dx="0.6604" dy="0.889" layer="1"/>
<wire x1="0" y1="0.4699" x2="3.7465" y2="0.4699" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.4699" x2="3.7465" y2="-0.4699" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.3655" y2="1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.3655" y2="-1.7399" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.2385" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="0.4699" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="0.7239" x2="3.4925" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.2385" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.3655" y1="-0.4699" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.2385" y1="-0.7239" x2="3.4925" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="0" x2="-0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="2.0955" y2="3.0099" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="-0.8255" y1="3.0099" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="-1.0795" y1="3.1369" x2="-1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="3.0099" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="3.1369" x2="1.0795" y2="2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="0" x2="0.3175" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="0" x2="0.8255" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="-0.9525" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="2.0955" y2="-3.0099" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.3175" y1="-3.0099" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.0635" y1="-2.8829" x2="0.0635" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-2.8829" width="0.1524" layer="48"/>
<wire x1="0.8255" y1="-3.0099" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="1.0795" y1="-2.8829" x2="1.0795" y2="-3.1369" width="0.1524" layer="48"/>
<text x="-15.2035" y="-7.3025" size="1.27" layer="48" ratio="6">Default Padstyle: RX26Y35D0T</text>
<text x="-18.0848" y="-9.8425" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.3825" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="3.8735" y="-0.3175" size="0.635" layer="48" ratio="4">0.037in/0.94mm</text>
<text x="-4.0424" y="3.5179" size="0.635" layer="48" ratio="4">0.065in/1.651mm</text>
<text x="-3.1828" y="-4.1529" size="0.635" layer="48" ratio="4">0.02in/0.508mm</text>
<wire x1="-0.3175" y1="-0.4699" x2="-0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.3175" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="-0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="0.4699" x2="0.3175" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.3175" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="0.3175" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="-0.4699" x2="0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="-0.4699" x2="0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="0.8255" y1="0.4699" x2="-0.8255" y2="0.4699" width="0.1524" layer="51"/>
<wire x1="-0.8255" y1="0.4699" x2="-0.8255" y2="-0.4699" width="0.1524" layer="51"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4191"/>
<vertex x="0.2667" y="-0.4191"/>
<vertex x="0.2667" y="0.4191"/>
<vertex x="-0.2667" y="0.4191"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2667" y="-0.4699"/>
<vertex x="0.2667" y="-0.4699"/>
<vertex x="0.2667" y="0.4699"/>
<vertex x="-0.2667" y="0.4699"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="RES">
<pin name="2" x="0" y="0" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="1" x="12.7" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="4.445" y1="-1.27" x2="5.715" y2="1.27" width="0.2032" layer="94"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="6.985" y1="-1.27" x2="8.255" y2="1.27" width="0.2032" layer="94"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.175" y2="1.27" width="0.2032" layer="94"/>
<wire x1="9.525" y1="-1.27" x2="10.16" y2="0" width="0.2032" layer="94"/>
<text x="-2.6131" y="-5.5499" size="3.48" layer="96" ratio="10">&gt;Value</text>
<text x="-2.1798" y="2.0701" size="3.48" layer="95" ratio="10">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CRCW0603100KFKEA" prefix="R">
<gates>
<gate name="A" symbol="RES" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="RES_CRCW_0603_VIS" package="RES_CRCW_0603_VIS">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW0603100KFKEA" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
<device name="RES_CRCW_0603_VIS-M" package="RES_CRCW_0603_VIS-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW0603100KFKEA" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
<device name="RES_CRCW_0603_VIS-L" package="RES_CRCW_0603_VIS-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW0603100KFKEA" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="C0805C223F5GEC7210">
<packages>
<package name="CAPC2012X120N">
<text x="-1.71" y="-1.07" size="0.5" layer="27" align="top-left">&gt;VALUE</text>
<text x="-1.71" y="1.07" size="0.5" layer="25">&gt;NAME</text>
<wire x1="1.1" y1="-0.72" x2="-1.1" y2="-0.72" width="0.127" layer="51"/>
<wire x1="1.1" y1="0.72" x2="-1.1" y2="0.72" width="0.127" layer="51"/>
<wire x1="1.1" y1="-0.72" x2="1.1" y2="0.72" width="0.127" layer="51"/>
<wire x1="-1.1" y1="-0.72" x2="-1.1" y2="0.72" width="0.127" layer="51"/>
<wire x1="-1.708" y1="-0.983" x2="1.708" y2="-0.983" width="0.05" layer="39"/>
<wire x1="-1.708" y1="0.983" x2="1.708" y2="0.983" width="0.05" layer="39"/>
<wire x1="-1.708" y1="-0.983" x2="-1.708" y2="0.983" width="0.05" layer="39"/>
<wire x1="1.708" y1="-0.983" x2="1.708" y2="0.983" width="0.05" layer="39"/>
<smd name="1" x="-0.875" y="0" dx="1.16" dy="1.47" layer="1"/>
<smd name="2" x="0.875" y="0" dx="1.16" dy="1.47" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="C0805C223F5GEC7210">
<text x="0" y="3.81093125" size="1.77843125" layer="95">&gt;NAME</text>
<text x="0" y="-5.08848125" size="1.78096875" layer="96">&gt;VALUE</text>
<rectangle x1="0" y1="-1.906859375" x2="0.635" y2="1.905" layer="94"/>
<rectangle x1="1.90685" y1="-1.90685" x2="2.54" y2="1.905" layer="94"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C0805C223F5GEC7210" prefix="C">
<gates>
<gate name="G$1" symbol="C0805C223F5GEC7210" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC2012X120N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="10uF">
<packages>
<package name="CAP_CL32_SAM">
<smd name="1" x="-1.4778" y="0" dx="0.9556" dy="2.5" layer="1"/>
<smd name="2" x="1.4778" y="0" dx="0.9556" dy="2.5" layer="1"/>
<wire x1="0" y1="1.25" x2="4.521" y2="1.25" width="0.1524" layer="48"/>
<wire x1="0" y1="-1.25" x2="4.521" y2="-1.25" width="0.1524" layer="48"/>
<wire x1="4.14" y1="1.25" x2="4.14" y2="2.52" width="0.1524" layer="48"/>
<wire x1="4.14" y1="-1.25" x2="4.14" y2="-2.52" width="0.1524" layer="48"/>
<wire x1="4.14" y1="1.25" x2="4.013" y2="1.504" width="0.1524" layer="48"/>
<wire x1="4.14" y1="1.25" x2="4.267" y2="1.504" width="0.1524" layer="48"/>
<wire x1="4.013" y1="1.504" x2="4.267" y2="1.504" width="0.1524" layer="48"/>
<wire x1="4.14" y1="-1.25" x2="4.013" y2="-1.504" width="0.1524" layer="48"/>
<wire x1="4.14" y1="-1.25" x2="4.267" y2="-1.504" width="0.1524" layer="48"/>
<wire x1="4.013" y1="-1.504" x2="4.267" y2="-1.504" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="0" x2="-1.6" y2="4.171" width="0.1524" layer="48"/>
<wire x1="1.6" y1="0" x2="1.6" y2="4.171" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="3.79" x2="-2.87" y2="3.79" width="0.1524" layer="48"/>
<wire x1="1.6" y1="3.79" x2="2.87" y2="3.79" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="3.79" x2="-1.854" y2="3.917" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="3.79" x2="-1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="-1.854" y1="3.917" x2="-1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="1.6" y1="3.79" x2="1.854" y2="3.917" width="0.1524" layer="48"/>
<wire x1="1.6" y1="3.79" x2="1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="1.854" y1="3.917" x2="1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="1" y1="0" x2="1" y2="-4.171" width="0.1524" layer="48"/>
<wire x1="1.6" y1="0" x2="1.6" y2="-4.171" width="0.1524" layer="48"/>
<wire x1="1" y1="-3.79" x2="-0.27" y2="-3.79" width="0.1524" layer="48"/>
<wire x1="1.6" y1="-3.79" x2="2.87" y2="-3.79" width="0.1524" layer="48"/>
<wire x1="1" y1="-3.79" x2="0.746" y2="-3.663" width="0.1524" layer="48"/>
<wire x1="1" y1="-3.79" x2="0.746" y2="-3.917" width="0.1524" layer="48"/>
<wire x1="0.746" y1="-3.663" x2="0.746" y2="-3.917" width="0.1524" layer="48"/>
<wire x1="1.6" y1="-3.79" x2="1.854" y2="-3.663" width="0.1524" layer="48"/>
<wire x1="1.6" y1="-3.79" x2="1.854" y2="-3.917" width="0.1524" layer="48"/>
<wire x1="1.854" y1="-3.663" x2="1.854" y2="-3.917" width="0.1524" layer="48"/>
<text x="-18.6611" y="-8.108" size="1.27" layer="48" ratio="6">Default Padstyle: RX37p62Y98p43D0T</text>
<text x="-18.0848" y="-10.648" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-13.188" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="4.648" y="-0.3175" size="0.635" layer="48" ratio="4">0.098in/2.5mm</text>
<text x="-3.4661" y="4.298" size="0.635" layer="48" ratio="4">0.126in/3.2mm</text>
<text x="-2.1661" y="-4.933" size="0.635" layer="48" ratio="4">0.024in/0.6mm</text>
<wire x1="-0.6925" y1="-1.377" x2="0.6925" y2="-1.377" width="0.1524" layer="21"/>
<wire x1="0.6925" y1="1.377" x2="-0.6925" y2="1.377" width="0.1524" layer="21"/>
<wire x1="-1" y1="-1.25" x2="-1" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1" y1="1.25" x2="-1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="1.25" x2="-1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="-1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1" y1="1.25" x2="1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1" y1="-1.25" x2="1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="1.25" x2="1" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="1.25" x2="-1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="1.25" x2="-1.6" y2="-1.25" width="0.1524" layer="51"/>
<polygon width="0.0254" layer="41" pour="solid">
<vertex x="-0.9492" y="-1.1992"/>
<vertex x="0.9492" y="-1.1992"/>
<vertex x="0.9492" y="1.1992"/>
<vertex x="-0.9492" y="1.1992"/>
</polygon>
<polygon width="0.0254" layer="41" pour="solid">
<vertex x="-0.9492" y="-1.25"/>
<vertex x="0.9492" y="-1.25"/>
<vertex x="0.9492" y="1.25"/>
<vertex x="-0.9492" y="1.25"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="CAP_CL32_SAM-M">
<smd name="1" x="-1.5794" y="0" dx="1.1588" dy="2.5508" layer="1"/>
<smd name="2" x="1.5794" y="0" dx="1.1588" dy="2.5508" layer="1"/>
<wire x1="0" y1="1.25" x2="4.521" y2="1.25" width="0.1524" layer="48"/>
<wire x1="0" y1="-1.25" x2="4.521" y2="-1.25" width="0.1524" layer="48"/>
<wire x1="4.14" y1="1.25" x2="4.14" y2="2.52" width="0.1524" layer="48"/>
<wire x1="4.14" y1="-1.25" x2="4.14" y2="-2.52" width="0.1524" layer="48"/>
<wire x1="4.14" y1="1.25" x2="4.013" y2="1.504" width="0.1524" layer="48"/>
<wire x1="4.14" y1="1.25" x2="4.267" y2="1.504" width="0.1524" layer="48"/>
<wire x1="4.013" y1="1.504" x2="4.267" y2="1.504" width="0.1524" layer="48"/>
<wire x1="4.14" y1="-1.25" x2="4.013" y2="-1.504" width="0.1524" layer="48"/>
<wire x1="4.14" y1="-1.25" x2="4.267" y2="-1.504" width="0.1524" layer="48"/>
<wire x1="4.013" y1="-1.504" x2="4.267" y2="-1.504" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="0" x2="-1.6" y2="4.171" width="0.1524" layer="48"/>
<wire x1="1.6" y1="0" x2="1.6" y2="4.171" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="3.79" x2="-2.87" y2="3.79" width="0.1524" layer="48"/>
<wire x1="1.6" y1="3.79" x2="2.87" y2="3.79" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="3.79" x2="-1.854" y2="3.917" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="3.79" x2="-1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="-1.854" y1="3.917" x2="-1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="1.6" y1="3.79" x2="1.854" y2="3.917" width="0.1524" layer="48"/>
<wire x1="1.6" y1="3.79" x2="1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="1.854" y1="3.917" x2="1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="1" y1="0" x2="1" y2="-4.171" width="0.1524" layer="48"/>
<wire x1="1.6" y1="0" x2="1.6" y2="-4.171" width="0.1524" layer="48"/>
<wire x1="1" y1="-3.79" x2="-0.27" y2="-3.79" width="0.1524" layer="48"/>
<wire x1="1.6" y1="-3.79" x2="2.87" y2="-3.79" width="0.1524" layer="48"/>
<wire x1="1" y1="-3.79" x2="0.746" y2="-3.663" width="0.1524" layer="48"/>
<wire x1="1" y1="-3.79" x2="0.746" y2="-3.917" width="0.1524" layer="48"/>
<wire x1="0.746" y1="-3.663" x2="0.746" y2="-3.917" width="0.1524" layer="48"/>
<wire x1="1.6" y1="-3.79" x2="1.854" y2="-3.663" width="0.1524" layer="48"/>
<wire x1="1.6" y1="-3.79" x2="1.854" y2="-3.917" width="0.1524" layer="48"/>
<wire x1="1.854" y1="-3.663" x2="1.854" y2="-3.917" width="0.1524" layer="48"/>
<text x="-19.2373" y="-8.1334" size="1.27" layer="48" ratio="6">Default Padstyle: RX45p62Y100p43D0T</text>
<text x="-18.0848" y="-10.6734" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-13.2134" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="4.648" y="-0.3175" size="0.635" layer="48" ratio="4">0.098in/2.5mm</text>
<text x="-3.4661" y="4.298" size="0.635" layer="48" ratio="4">0.126in/3.2mm</text>
<text x="-2.1661" y="-4.933" size="0.635" layer="48" ratio="4">0.024in/0.6mm</text>
<wire x1="-0.6832" y1="-1.377" x2="0.6832" y2="-1.377" width="0.1524" layer="21"/>
<wire x1="0.6832" y1="1.377" x2="-0.6832" y2="1.377" width="0.1524" layer="21"/>
<wire x1="-2.9208" y1="0" x2="-3.0732" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-3.0732" y1="0" x2="-2.9208" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1" y1="-1.25" x2="-1" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1" y1="1.25" x2="-1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="1.25" x2="-1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="-1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1" y1="1.25" x2="1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1" y1="-1.25" x2="1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="1.25" x2="1" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="1.25" x2="-1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="1.25" x2="-1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="-1.3762" y1="0" x2="-1.5286" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-1.5286" y1="0" x2="-1.3762" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.9492" y="-1.1992"/>
<vertex x="0.9492" y="-1.1992"/>
<vertex x="0.9492" y="1.1992"/>
<vertex x="-0.9492" y="1.1992"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.9492" y="-1.25"/>
<vertex x="0.9492" y="-1.25"/>
<vertex x="0.9492" y="1.25"/>
<vertex x="-0.9492" y="1.25"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="CAP_CL32_SAM-L">
<smd name="1" x="-1.3762" y="0" dx="0.7524" dy="2.4492" layer="1"/>
<smd name="2" x="1.3762" y="0" dx="0.7524" dy="2.4492" layer="1"/>
<wire x1="0" y1="1.25" x2="4.521" y2="1.25" width="0.1524" layer="48"/>
<wire x1="0" y1="-1.25" x2="4.521" y2="-1.25" width="0.1524" layer="48"/>
<wire x1="4.14" y1="1.25" x2="4.14" y2="2.52" width="0.1524" layer="48"/>
<wire x1="4.14" y1="-1.25" x2="4.14" y2="-2.52" width="0.1524" layer="48"/>
<wire x1="4.14" y1="1.25" x2="4.013" y2="1.504" width="0.1524" layer="48"/>
<wire x1="4.14" y1="1.25" x2="4.267" y2="1.504" width="0.1524" layer="48"/>
<wire x1="4.013" y1="1.504" x2="4.267" y2="1.504" width="0.1524" layer="48"/>
<wire x1="4.14" y1="-1.25" x2="4.013" y2="-1.504" width="0.1524" layer="48"/>
<wire x1="4.14" y1="-1.25" x2="4.267" y2="-1.504" width="0.1524" layer="48"/>
<wire x1="4.013" y1="-1.504" x2="4.267" y2="-1.504" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="0" x2="-1.6" y2="4.171" width="0.1524" layer="48"/>
<wire x1="1.6" y1="0" x2="1.6" y2="4.171" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="3.79" x2="-2.87" y2="3.79" width="0.1524" layer="48"/>
<wire x1="1.6" y1="3.79" x2="2.87" y2="3.79" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="3.79" x2="-1.854" y2="3.917" width="0.1524" layer="48"/>
<wire x1="-1.6" y1="3.79" x2="-1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="-1.854" y1="3.917" x2="-1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="1.6" y1="3.79" x2="1.854" y2="3.917" width="0.1524" layer="48"/>
<wire x1="1.6" y1="3.79" x2="1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="1.854" y1="3.917" x2="1.854" y2="3.663" width="0.1524" layer="48"/>
<wire x1="1" y1="0" x2="1" y2="-4.171" width="0.1524" layer="48"/>
<wire x1="1.6" y1="0" x2="1.6" y2="-4.171" width="0.1524" layer="48"/>
<wire x1="1" y1="-3.79" x2="-0.27" y2="-3.79" width="0.1524" layer="48"/>
<wire x1="1.6" y1="-3.79" x2="2.87" y2="-3.79" width="0.1524" layer="48"/>
<wire x1="1" y1="-3.79" x2="0.746" y2="-3.663" width="0.1524" layer="48"/>
<wire x1="1" y1="-3.79" x2="0.746" y2="-3.917" width="0.1524" layer="48"/>
<wire x1="0.746" y1="-3.663" x2="0.746" y2="-3.917" width="0.1524" layer="48"/>
<wire x1="1.6" y1="-3.79" x2="1.854" y2="-3.663" width="0.1524" layer="48"/>
<wire x1="1.6" y1="-3.79" x2="1.854" y2="-3.917" width="0.1524" layer="48"/>
<wire x1="1.854" y1="-3.663" x2="1.854" y2="-3.917" width="0.1524" layer="48"/>
<text x="-18.6611" y="-8.0826" size="1.27" layer="48" ratio="6">Default Padstyle: RX29p62Y96p43D0T</text>
<text x="-18.0848" y="-10.6226" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-13.1626" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="4.648" y="-0.3175" size="0.635" layer="48" ratio="4">0.098in/2.5mm</text>
<text x="-3.4661" y="4.298" size="0.635" layer="48" ratio="4">0.126in/3.2mm</text>
<text x="-2.1661" y="-4.933" size="0.635" layer="48" ratio="4">0.024in/0.6mm</text>
<wire x1="-0.7042" y1="-1.377" x2="0.7042" y2="-1.377" width="0.1524" layer="21"/>
<wire x1="0.7042" y1="1.377" x2="-0.7042" y2="1.377" width="0.1524" layer="21"/>
<wire x1="-2.5144" y1="0" x2="-2.6668" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.6668" y1="0" x2="-2.5144" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1" y1="-1.25" x2="-1" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1" y1="1.25" x2="-1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="1.25" x2="-1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="-1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1" y1="1.25" x2="1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1" y1="-1.25" x2="1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="1.25" x2="1" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="1.25" x2="-1.6" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="1.25" x2="-1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="-1.173" y1="0" x2="-1.3254" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-1.3254" y1="0" x2="-1.173" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.9492" y="-1.1992"/>
<vertex x="0.9492" y="-1.1992"/>
<vertex x="0.9492" y="1.1992"/>
<vertex x="-0.9492" y="1.1992"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.9492" y="-1.25"/>
<vertex x="0.9492" y="-1.25"/>
<vertex x="0.9492" y="1.25"/>
<vertex x="-0.9492" y="1.25"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="CAPH">
<pin name="2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="3.4798" y1="-1.905" x2="3.4798" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="-1.905" x2="4.1148" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="5.08" y2="0" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<text x="-5.1531" y="-5.5499" size="3.48" layer="96" ratio="10">&gt;Value</text>
<text x="-4.0848" y="2.0701" size="3.48" layer="95" ratio="10">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CL32B106KBJNNNE" prefix="C">
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="CAP_CL32_SAM" package="CAP_CL32_SAM">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CL32B106KBJNNNE" constant="no"/>
<attribute name="MFR_NAME" value="Samsung" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_CL32_SAM-M" package="CAP_CL32_SAM-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CL32B106KBJNNNE" constant="no"/>
<attribute name="MFR_NAME" value="Samsung" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_CL32_SAM-L" package="CAP_CL32_SAM-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CL32B106KBJNNNE" constant="no"/>
<attribute name="MFR_NAME" value="Samsung" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CRCW06031R10FKEA">
<packages>
<package name="RESC1508X50N">
<text x="-1.44" y="-0.82" size="0.5" layer="27" align="top-left">&gt;VALUE</text>
<text x="-1.44" y="0.82" size="0.5" layer="25">&gt;NAME</text>
<wire x1="0.83" y1="-0.47" x2="-0.83" y2="-0.47" width="0.127" layer="51"/>
<wire x1="0.83" y1="0.47" x2="-0.83" y2="0.47" width="0.127" layer="51"/>
<wire x1="0.83" y1="-0.47" x2="0.83" y2="0.47" width="0.127" layer="51"/>
<wire x1="-0.83" y1="-0.47" x2="-0.83" y2="0.47" width="0.127" layer="51"/>
<wire x1="-1.444" y1="-0.74" x2="1.444" y2="-0.74" width="0.05" layer="39"/>
<wire x1="-1.444" y1="0.74" x2="1.444" y2="0.74" width="0.05" layer="39"/>
<wire x1="-1.444" y1="-0.74" x2="-1.444" y2="0.74" width="0.05" layer="39"/>
<wire x1="1.444" y1="-0.74" x2="1.444" y2="0.74" width="0.05" layer="39"/>
<smd name="1" x="-0.765" y="0" dx="0.86" dy="0.98" layer="1"/>
<smd name="2" x="0.765" y="0" dx="0.86" dy="0.98" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="CRCW06031R10FKEA">
<wire x1="-5.08" y1="0" x2="-4.445" y2="1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-3.175" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-3.175" y1="-1.905" x2="-1.905" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.905" y1="1.905" x2="-0.635" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-1.905" x2="0.635" y2="1.905" width="0.254" layer="94"/>
<wire x1="0.635" y1="1.905" x2="1.905" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.905" y1="-1.905" x2="3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="3.175" y1="1.905" x2="4.445" y2="-1.905" width="0.254" layer="94"/>
<wire x1="4.445" y1="-1.905" x2="5.08" y2="0" width="0.254" layer="94"/>
<text x="-7.624440625" y="2.54148125" size="2.54148125" layer="95">&gt;NAME</text>
<text x="-7.62996875" y="-5.086640625" size="2.54331875" layer="96">&gt;VALUE</text>
<pin name="1" x="-10.16" y="0" visible="off" length="middle" direction="pas"/>
<pin name="2" x="10.16" y="0" visible="off" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CRCW06031R10FKEA" prefix="R">
<gates>
<gate name="G$1" symbol="CRCW06031R10FKEA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC1508X50N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="UMK107BJ105KA-T">
<packages>
<package name="CAPC1608X90N">
<text x="-1.46" y="-0.8" size="0.5" layer="27" align="top-left">&gt;VALUE</text>
<text x="-1.46" y="0.8" size="0.5" layer="25">&gt;NAME</text>
<wire x1="0.85" y1="-0.45" x2="-0.85" y2="-0.45" width="0.127" layer="51"/>
<wire x1="0.85" y1="0.45" x2="-0.85" y2="0.45" width="0.127" layer="51"/>
<wire x1="0.85" y1="-0.45" x2="0.85" y2="0.45" width="0.127" layer="51"/>
<wire x1="-0.85" y1="-0.45" x2="-0.85" y2="0.45" width="0.127" layer="51"/>
<wire x1="-1.465" y1="-0.715" x2="1.465" y2="-0.715" width="0.05" layer="39"/>
<wire x1="-1.465" y1="0.715" x2="1.465" y2="0.715" width="0.05" layer="39"/>
<wire x1="-1.465" y1="-0.715" x2="-1.465" y2="0.715" width="0.05" layer="39"/>
<wire x1="1.465" y1="-0.715" x2="1.465" y2="0.715" width="0.05" layer="39"/>
<smd name="1" x="-0.738" y="0" dx="0.95" dy="0.93" layer="1"/>
<smd name="2" x="0.738" y="0" dx="0.95" dy="0.93" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="UMK107BJ105KA-T">
<text x="0" y="3.81093125" size="1.77843125" layer="95">&gt;NAME</text>
<text x="0" y="-5.08848125" size="1.78096875" layer="96">&gt;VALUE</text>
<rectangle x1="0" y1="-1.906859375" x2="0.635" y2="1.905" layer="94"/>
<rectangle x1="1.90685" y1="-1.90685" x2="2.54" y2="1.905" layer="94"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="UMK107BJ105KA-T" prefix="C">
<gates>
<gate name="G$1" symbol="UMK107BJ105KA-T" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC1608X90N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="2.2uF">
<packages>
<package name="CAP_CC0805_YAG">
<smd name="1" x="-0.8968" y="0" dx="1.1176" dy="1.4478" layer="1"/>
<smd name="2" x="0.8968" y="0" dx="1.1176" dy="1.4478" layer="1"/>
<wire x1="0" y1="0.7239" x2="4.021" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.7239" x2="4.021" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.64" y1="0.7239" x2="3.64" y2="1.9939" width="0.1524" layer="48"/>
<wire x1="3.64" y1="-0.7239" x2="3.64" y2="-1.9939" width="0.1524" layer="48"/>
<wire x1="3.64" y1="0.7239" x2="3.513" y2="0.9779" width="0.1524" layer="48"/>
<wire x1="3.64" y1="0.7239" x2="3.767" y2="0.9779" width="0.1524" layer="48"/>
<wire x1="3.513" y1="0.9779" x2="3.767" y2="0.9779" width="0.1524" layer="48"/>
<wire x1="3.64" y1="-0.7239" x2="3.513" y2="-0.9779" width="0.1524" layer="48"/>
<wire x1="3.64" y1="-0.7239" x2="3.767" y2="-0.9779" width="0.1524" layer="48"/>
<wire x1="3.513" y1="-0.9779" x2="3.767" y2="-0.9779" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="0" x2="-1.1" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="1.1" y1="0" x2="1.1" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="3.2639" x2="-2.37" y2="3.2639" width="0.1524" layer="48"/>
<wire x1="1.1" y1="3.2639" x2="2.37" y2="3.2639" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="3.2639" x2="-1.354" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="3.2639" x2="-1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="-1.354" y1="3.3909" x2="-1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="1.1" y1="3.2639" x2="1.354" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="1.1" y1="3.2639" x2="1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="1.354" y1="3.3909" x2="1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="0.338" y1="0" x2="0.338" y2="-3.6449" width="0.1524" layer="48"/>
<wire x1="1.1" y1="0" x2="1.1" y2="-3.6449" width="0.1524" layer="48"/>
<wire x1="0.338" y1="-3.2639" x2="-0.932" y2="-3.2639" width="0.1524" layer="48"/>
<wire x1="1.1" y1="-3.2639" x2="2.37" y2="-3.2639" width="0.1524" layer="48"/>
<wire x1="0.338" y1="-3.2639" x2="0.084" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.338" y1="-3.2639" x2="0.084" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.084" y1="-3.1369" x2="0.084" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="1.1" y1="-3.2639" x2="1.354" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="1.1" y1="-3.2639" x2="1.354" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="1.354" y1="-3.1369" x2="1.354" y2="-3.3909" width="0.1524" layer="48"/>
<text x="-15.2035" y="-7.5819" size="1.27" layer="48" ratio="6">Default Padstyle: RX44Y57D0T</text>
<text x="-18.0848" y="-10.1219" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.6619" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="4.148" y="-0.3175" size="0.635" layer="48" ratio="4">0.057in/1.448mm</text>
<text x="-3.4661" y="3.7719" size="0.635" layer="48" ratio="4">0.087in/2.2mm</text>
<text x="-3.0353" y="-4.4069" size="0.635" layer="48" ratio="4">0.03in/0.762mm</text>
<wire x1="-0.338" y1="-0.7239" x2="-0.338" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-0.338" y1="0.7239" x2="-1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="0.7239" x2="-1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="-0.7239" x2="-0.338" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="0.338" y1="0.7239" x2="0.338" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="0.338" y1="-0.7239" x2="1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="-0.7239" x2="1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="0.7239" x2="0.338" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="-0.7239" x2="1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="-0.7239" x2="1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="0.7239" x2="-1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="0.7239" x2="-1.1" y2="-0.7239" width="0.1524" layer="51"/>
<polygon width="0.0254" layer="41" pour="solid">
<vertex x="-0.2872" y="-0.6731"/>
<vertex x="0.2872" y="-0.6731"/>
<vertex x="0.2872" y="0.6731"/>
<vertex x="-0.2872" y="0.6731"/>
</polygon>
<polygon width="0.0254" layer="41" pour="solid">
<vertex x="-0.2872" y="-0.7239"/>
<vertex x="0.2872" y="-0.7239"/>
<vertex x="0.2872" y="0.7239"/>
<vertex x="-0.2872" y="0.7239"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="CAP_CC0805_YAG-M">
<smd name="1" x="-0.9984" y="0" dx="1.3208" dy="1.4986" layer="1"/>
<smd name="2" x="0.9984" y="0" dx="1.3208" dy="1.4986" layer="1"/>
<wire x1="0" y1="0.7239" x2="4.021" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.7239" x2="4.021" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.64" y1="0.7239" x2="3.64" y2="1.9939" width="0.1524" layer="48"/>
<wire x1="3.64" y1="-0.7239" x2="3.64" y2="-1.9939" width="0.1524" layer="48"/>
<wire x1="3.64" y1="0.7239" x2="3.513" y2="0.9779" width="0.1524" layer="48"/>
<wire x1="3.64" y1="0.7239" x2="3.767" y2="0.9779" width="0.1524" layer="48"/>
<wire x1="3.513" y1="0.9779" x2="3.767" y2="0.9779" width="0.1524" layer="48"/>
<wire x1="3.64" y1="-0.7239" x2="3.513" y2="-0.9779" width="0.1524" layer="48"/>
<wire x1="3.64" y1="-0.7239" x2="3.767" y2="-0.9779" width="0.1524" layer="48"/>
<wire x1="3.513" y1="-0.9779" x2="3.767" y2="-0.9779" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="0" x2="-1.1" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="1.1" y1="0" x2="1.1" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="3.2639" x2="-2.37" y2="3.2639" width="0.1524" layer="48"/>
<wire x1="1.1" y1="3.2639" x2="2.37" y2="3.2639" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="3.2639" x2="-1.354" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="3.2639" x2="-1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="-1.354" y1="3.3909" x2="-1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="1.1" y1="3.2639" x2="1.354" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="1.1" y1="3.2639" x2="1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="1.354" y1="3.3909" x2="1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="0.338" y1="0" x2="0.338" y2="-3.6449" width="0.1524" layer="48"/>
<wire x1="1.1" y1="0" x2="1.1" y2="-3.6449" width="0.1524" layer="48"/>
<wire x1="0.338" y1="-3.2639" x2="-0.932" y2="-3.2639" width="0.1524" layer="48"/>
<wire x1="1.1" y1="-3.2639" x2="2.37" y2="-3.2639" width="0.1524" layer="48"/>
<wire x1="0.338" y1="-3.2639" x2="0.084" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.338" y1="-3.2639" x2="0.084" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.084" y1="-3.1369" x2="0.084" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="1.1" y1="-3.2639" x2="1.354" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="1.1" y1="-3.2639" x2="1.354" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="1.354" y1="-3.1369" x2="1.354" y2="-3.3909" width="0.1524" layer="48"/>
<text x="-15.2035" y="-7.6073" size="1.27" layer="48" ratio="6">Default Padstyle: RX52Y59D0T</text>
<text x="-18.0848" y="-10.1473" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.6873" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="4.148" y="-0.3175" size="0.635" layer="48" ratio="4">0.057in/1.448mm</text>
<text x="-3.4661" y="3.7719" size="0.635" layer="48" ratio="4">0.087in/2.2mm</text>
<text x="-3.0353" y="-4.4069" size="0.635" layer="48" ratio="4">0.03in/0.762mm</text>
<wire x1="-2.4208" y1="0" x2="-2.5732" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.5732" y1="0" x2="-2.4208" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-0.338" y1="-0.7239" x2="-0.338" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-0.338" y1="0.7239" x2="-1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="0.7239" x2="-1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="-0.7239" x2="-0.338" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="0.338" y1="0.7239" x2="0.338" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="0.338" y1="-0.7239" x2="1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="-0.7239" x2="1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="0.7239" x2="0.338" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="-0.7239" x2="1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="-0.7239" x2="1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="0.7239" x2="-1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="0.7239" x2="-1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="-0.7952" y1="0" x2="-0.9476" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-0.9476" y1="0" x2="-0.7952" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2872" y="-0.6731"/>
<vertex x="0.2872" y="-0.6731"/>
<vertex x="0.2872" y="0.6731"/>
<vertex x="-0.2872" y="0.6731"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2872" y="-0.7239"/>
<vertex x="0.2872" y="-0.7239"/>
<vertex x="0.2872" y="0.7239"/>
<vertex x="-0.2872" y="0.7239"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
<package name="CAP_CC0805_YAG-L">
<smd name="1" x="-0.7952" y="0" dx="0.9144" dy="1.397" layer="1"/>
<smd name="2" x="0.7952" y="0" dx="0.9144" dy="1.397" layer="1"/>
<wire x1="0" y1="0.7239" x2="4.021" y2="0.7239" width="0.1524" layer="48"/>
<wire x1="0" y1="-0.7239" x2="4.021" y2="-0.7239" width="0.1524" layer="48"/>
<wire x1="3.64" y1="0.7239" x2="3.64" y2="1.9939" width="0.1524" layer="48"/>
<wire x1="3.64" y1="-0.7239" x2="3.64" y2="-1.9939" width="0.1524" layer="48"/>
<wire x1="3.64" y1="0.7239" x2="3.513" y2="0.9779" width="0.1524" layer="48"/>
<wire x1="3.64" y1="0.7239" x2="3.767" y2="0.9779" width="0.1524" layer="48"/>
<wire x1="3.513" y1="0.9779" x2="3.767" y2="0.9779" width="0.1524" layer="48"/>
<wire x1="3.64" y1="-0.7239" x2="3.513" y2="-0.9779" width="0.1524" layer="48"/>
<wire x1="3.64" y1="-0.7239" x2="3.767" y2="-0.9779" width="0.1524" layer="48"/>
<wire x1="3.513" y1="-0.9779" x2="3.767" y2="-0.9779" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="0" x2="-1.1" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="1.1" y1="0" x2="1.1" y2="3.6449" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="3.2639" x2="-2.37" y2="3.2639" width="0.1524" layer="48"/>
<wire x1="1.1" y1="3.2639" x2="2.37" y2="3.2639" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="3.2639" x2="-1.354" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="-1.1" y1="3.2639" x2="-1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="-1.354" y1="3.3909" x2="-1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="1.1" y1="3.2639" x2="1.354" y2="3.3909" width="0.1524" layer="48"/>
<wire x1="1.1" y1="3.2639" x2="1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="1.354" y1="3.3909" x2="1.354" y2="3.1369" width="0.1524" layer="48"/>
<wire x1="0.338" y1="0" x2="0.338" y2="-3.6449" width="0.1524" layer="48"/>
<wire x1="1.1" y1="0" x2="1.1" y2="-3.6449" width="0.1524" layer="48"/>
<wire x1="0.338" y1="-3.2639" x2="-0.932" y2="-3.2639" width="0.1524" layer="48"/>
<wire x1="1.1" y1="-3.2639" x2="2.37" y2="-3.2639" width="0.1524" layer="48"/>
<wire x1="0.338" y1="-3.2639" x2="0.084" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="0.338" y1="-3.2639" x2="0.084" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="0.084" y1="-3.1369" x2="0.084" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="1.1" y1="-3.2639" x2="1.354" y2="-3.1369" width="0.1524" layer="48"/>
<wire x1="1.1" y1="-3.2639" x2="1.354" y2="-3.3909" width="0.1524" layer="48"/>
<wire x1="1.354" y1="-3.1369" x2="1.354" y2="-3.3909" width="0.1524" layer="48"/>
<text x="-15.2035" y="-7.5565" size="1.27" layer="48" ratio="6">Default Padstyle: RX36Y55D0T</text>
<text x="-18.0848" y="-10.0965" size="1.27" layer="48" ratio="6">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.6365" size="1.27" layer="48" ratio="6">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="4.148" y="-0.3175" size="0.635" layer="48" ratio="4">0.057in/1.448mm</text>
<text x="-3.4661" y="3.7719" size="0.635" layer="48" ratio="4">0.087in/2.2mm</text>
<text x="-3.0353" y="-4.4069" size="0.635" layer="48" ratio="4">0.03in/0.762mm</text>
<wire x1="-2.0144" y1="0" x2="-2.1668" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.1668" y1="0" x2="-2.0144" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-0.338" y1="-0.7239" x2="-0.338" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-0.338" y1="0.7239" x2="-1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="0.7239" x2="-1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="-0.7239" x2="-0.338" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="0.338" y1="0.7239" x2="0.338" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="0.338" y1="-0.7239" x2="1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="-0.7239" x2="1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="0.7239" x2="0.338" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="-0.7239" x2="1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="-0.7239" x2="1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="1.1" y1="0.7239" x2="-1.1" y2="0.7239" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="0.7239" x2="-1.1" y2="-0.7239" width="0.1524" layer="51"/>
<wire x1="-0.592" y1="0" x2="-0.7444" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-0.7444" y1="0" x2="-0.592" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2872" y="-0.6731"/>
<vertex x="0.2872" y="-0.6731"/>
<vertex x="0.2872" y="0.6731"/>
<vertex x="-0.2872" y="0.6731"/>
</polygon>
<polygon width="0.1524" layer="41" pour="solid">
<vertex x="-0.2872" y="-0.7239"/>
<vertex x="0.2872" y="-0.7239"/>
<vertex x="0.2872" y="0.7239"/>
<vertex x="-0.2872" y="0.7239"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="CAPH">
<pin name="2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="3.4798" y1="-1.905" x2="3.4798" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="-1.905" x2="4.1148" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="5.08" y2="0" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<text x="-5.1531" y="-5.5499" size="3.48" layer="96" ratio="10">&gt;Value</text>
<text x="-4.0848" y="2.0701" size="3.48" layer="95" ratio="10">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CC0805KKX7R9BB225" prefix="C">
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="CAP_CC0805_YAG" package="CAP_CC0805_YAG">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CC0805KKX7R9BB225" constant="no"/>
<attribute name="MFR_NAME" value="Yageo" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_CC0805_YAG-M" package="CAP_CC0805_YAG-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CC0805KKX7R9BB225" constant="no"/>
<attribute name="MFR_NAME" value="Yageo" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_CC0805_YAG-L" package="CAP_CC0805_YAG-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CC0805KKX7R9BB225" constant="no"/>
<attribute name="MFR_NAME" value="Yageo" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="2025-03-22_04-08-40_Library">
<packages>
<package name="CONN_S2B-PH-K-S_JST">
<pad name="1" x="0" y="0" drill="0.8128" diameter="1.3208"/>
<pad name="2" x="2" y="0" drill="0.8128" diameter="1.3208"/>
<wire x1="0" y1="0" x2="0" y2="3.89" width="0.1524" layer="48"/>
<wire x1="2" y1="0" x2="2" y2="3.89" width="0.1524" layer="48"/>
<wire x1="0" y1="3.509" x2="-1.27" y2="3.509" width="0.1524" layer="48"/>
<wire x1="2" y1="3.509" x2="3.27" y2="3.509" width="0.1524" layer="48"/>
<wire x1="0" y1="3.509" x2="-0.254" y2="3.636" width="0.1524" layer="48"/>
<wire x1="0" y1="3.509" x2="-0.254" y2="3.382" width="0.1524" layer="48"/>
<wire x1="-0.254" y1="3.636" x2="-0.254" y2="3.382" width="0.1524" layer="48"/>
<wire x1="2" y1="3.509" x2="2.254" y2="3.636" width="0.1524" layer="48"/>
<wire x1="2" y1="3.509" x2="2.254" y2="3.382" width="0.1524" layer="48"/>
<wire x1="2.254" y1="3.636" x2="2.254" y2="3.382" width="0.1524" layer="48"/>
<wire x1="-1.9464" y1="1.35" x2="-1.9464" y2="12.145" width="0.1524" layer="48"/>
<wire x1="3.9464" y1="1.35" x2="3.9464" y2="12.145" width="0.1524" layer="48"/>
<wire x1="-1.9464" y1="11.764" x2="3.9464" y2="11.764" width="0.1524" layer="48"/>
<wire x1="-1.9464" y1="11.764" x2="-1.6924" y2="11.891" width="0.1524" layer="48"/>
<wire x1="-1.9464" y1="11.764" x2="-1.6924" y2="11.637" width="0.1524" layer="48"/>
<wire x1="-1.6924" y1="11.891" x2="-1.6924" y2="11.637" width="0.1524" layer="48"/>
<wire x1="3.9464" y1="11.764" x2="3.6924" y2="11.891" width="0.1524" layer="48"/>
<wire x1="3.9464" y1="11.764" x2="3.6924" y2="11.637" width="0.1524" layer="48"/>
<wire x1="3.6924" y1="11.891" x2="3.6924" y2="11.637" width="0.1524" layer="48"/>
<wire x1="0" y1="0" x2="6.8674" y2="0" width="0.1524" layer="48"/>
<wire x1="0" y1="0" x2="6.8674" y2="0" width="0.1524" layer="48"/>
<wire x1="6.4864" y1="0" x2="6.4864" y2="1.27" width="0.1524" layer="48"/>
<wire x1="6.4864" y1="0" x2="6.4864" y2="-1.27" width="0.1524" layer="48"/>
<wire x1="6.4864" y1="0" x2="6.3594" y2="0.254" width="0.1524" layer="48"/>
<wire x1="6.4864" y1="0" x2="6.6134" y2="0.254" width="0.1524" layer="48"/>
<wire x1="6.3594" y1="0.254" x2="6.6134" y2="0.254" width="0.1524" layer="48"/>
<wire x1="6.4864" y1="0" x2="6.3594" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="6.4864" y1="0" x2="6.6134" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="6.3594" y1="-0.254" x2="6.6134" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="-1.9464" y1="1.35" x2="-12.7414" y2="1.35" width="0.1524" layer="48"/>
<wire x1="1" y1="0" x2="-12.7414" y2="0" width="0.1524" layer="48"/>
<wire x1="-12.3604" y1="1.35" x2="-12.3604" y2="2.62" width="0.1524" layer="48"/>
<wire x1="-12.3604" y1="0" x2="-12.3604" y2="-1.27" width="0.1524" layer="48"/>
<wire x1="-12.3604" y1="1.35" x2="-12.4874" y2="1.604" width="0.1524" layer="48"/>
<wire x1="-12.3604" y1="1.35" x2="-12.2334" y2="1.604" width="0.1524" layer="48"/>
<wire x1="-12.4874" y1="1.604" x2="-12.2334" y2="1.604" width="0.1524" layer="48"/>
<wire x1="-12.3604" y1="0" x2="-12.4874" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="-12.3604" y1="0" x2="-12.2334" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="-12.4874" y1="-0.254" x2="-12.2334" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="-1.9464" y1="1.35" x2="-11.4714" y2="1.35" width="0.1524" layer="48"/>
<wire x1="-1.9464" y1="-6.2446" x2="-11.4714" y2="-6.2446" width="0.1524" layer="48"/>
<wire x1="-11.0904" y1="1.35" x2="-11.0904" y2="-6.2446" width="0.1524" layer="48"/>
<wire x1="-11.0904" y1="1.35" x2="-11.2174" y2="1.096" width="0.1524" layer="48"/>
<wire x1="-11.0904" y1="1.35" x2="-10.9634" y2="1.096" width="0.1524" layer="48"/>
<wire x1="-11.2174" y1="1.096" x2="-10.9634" y2="1.096" width="0.1524" layer="48"/>
<wire x1="-11.0904" y1="-6.2446" x2="-11.2174" y2="-5.9906" width="0.1524" layer="48"/>
<wire x1="-11.0904" y1="-6.2446" x2="-10.9634" y2="-5.9906" width="0.1524" layer="48"/>
<wire x1="-11.2174" y1="-5.9906" x2="-10.9634" y2="-5.9906" width="0.1524" layer="48"/>
<text x="-14.7797" y="-10.3086" size="1.27" layer="48" ratio="6">Default Padstyle: EX52Y52D32P</text>
<text x="-15.5424" y="-12.2136" size="1.27" layer="48" ratio="6">1st Mtg Padstyle: RX110Y80D50P</text>
<text x="-15.1525" y="-14.1186" size="1.27" layer="48" ratio="6">2nd Mtg Padstyle: EX70Y70D70P</text>
<text x="-15.1525" y="-16.0236" size="1.27" layer="48" ratio="6">3rd Mtg Padstyle: EX70Y70D70P</text>
<text x="-15.356" y="-17.9286" size="1.27" layer="48" ratio="6">Left Mtg Padstyle: EX60Y60D30P</text>
<text x="-15.9323" y="-19.8336" size="1.27" layer="48" ratio="6">Right Mtg Padstyle: EX60Y60D30P</text>
<text x="-13.8136" y="-21.7386" size="1.27" layer="48" ratio="6">Alt Padstyle 1: OX60Y90D30P</text>
<text x="-13.8136" y="-23.6436" size="1.27" layer="48" ratio="6">Alt Padstyle 2: OX90Y60D30P</text>
<text x="-3.4831" y="4.017" size="0.635" layer="48" ratio="4">0.079in/2mm</text>
<text x="-3.0424" y="12.272" size="0.635" layer="48" ratio="4">0.232in/5.893mm</text>
<text x="6.9944" y="-0.3175" size="0.635" layer="48" ratio="4">0in/0mm</text>
<text x="-20.377" y="0.3575" size="0.635" layer="48" ratio="4">0.053in/1.35mm</text>
<text x="-19.6832" y="-2.7648" size="0.635" layer="48" ratio="4">0.299in/7.595mm</text>
<wire x1="-2.0734" y1="-6.3716" x2="4.0734" y2="-6.3716" width="0.1524" layer="21"/>
<wire x1="4.0734" y1="-6.3716" x2="4.0734" y2="1.477" width="0.1524" layer="21"/>
<wire x1="4.0734" y1="1.477" x2="-2.0734" y2="1.477" width="0.1524" layer="21"/>
<wire x1="-2.0734" y1="1.477" x2="-2.0734" y2="-6.3716" width="0.1524" layer="21"/>
<wire x1="-3.4704" y1="0" x2="-4.2324" y2="0" width="0.508" layer="21" curve="-180"/>
<wire x1="-4.2324" y1="0" x2="-3.4704" y2="0" width="0.508" layer="21" curve="-180"/>
<wire x1="-1.9464" y1="-6.2446" x2="3.9464" y2="-6.2446" width="0.1524" layer="51"/>
<wire x1="3.9464" y1="-6.2446" x2="3.9464" y2="1.35" width="0.1524" layer="51"/>
<wire x1="3.9464" y1="1.35" x2="-1.9464" y2="1.35" width="0.1524" layer="51"/>
<wire x1="-1.9464" y1="1.35" x2="-1.9464" y2="-6.2446" width="0.1524" layer="51"/>
<wire x1="0.381" y1="1.905" x2="-0.381" y2="1.905" width="0.508" layer="51" curve="-180"/>
<wire x1="-0.381" y1="1.905" x2="0.381" y2="1.905" width="0.508" layer="51" curve="-180"/>
<wire x1="-3.4704" y1="0" x2="-4.2324" y2="0" width="0.508" layer="22" curve="-180"/>
<wire x1="-4.2324" y1="0" x2="-3.4704" y2="0" width="0.508" layer="22" curve="-180"/>
<text x="-2.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-0.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="CONN_S2B-PH-K-S">
<pin name="1" x="0" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="middle" direction="pas"/>
<wire x1="10.16" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="0.8467" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-1.6933" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="-0.8467" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-3.3867" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="12.7" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="4.1646" y="5.3086" size="2.083" layer="95" ratio="6">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="S2B-PH-K-S(LF)(SN)" prefix="J">
<gates>
<gate name="A" symbol="CONN_S2B-PH-K-S" x="0" y="0"/>
</gates>
<devices>
<device name="CONN_S2B-PH-K-S_JST" package="CONN_S2B-PH-K-S_JST">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="S2B-PH-K-S(LF)(SN)" constant="no"/>
<attribute name="MFR_NAME" value="JST" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Tinkercad" urn="urn:adsk.eagle:library:30890021">
<packages>
<package name="1X07" urn="urn:adsk.eagle:footprint:22367/1" library_version="100">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-8.9662" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.89" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="51"/>
<rectangle x1="-7.874" y1="-0.254" x2="-7.366" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
</package>
<package name="1X04" urn="urn:adsk.eagle:footprint:22258/1" library_version="100">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.1562" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="1X07" urn="urn:adsk.eagle:package:22477/2" type="model">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X07"/>
</packageinstances>
</package3d>
<package3d name="1X04" urn="urn:adsk.eagle:package:22407/2" type="model">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X04"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD-1X07" urn="urn:adsk.eagle:symbol:31968525/1" library_version="100">
<pin name="1" x="-2.54" y="7.62" visible="pin" length="short"/>
<pin name="2" x="-2.54" y="5.08" visible="pin" length="short"/>
<pin name="3" x="-2.54" y="2.54" visible="pin" length="short"/>
<pin name="4" x="-2.54" y="0" visible="pin" length="short"/>
<pin name="5" x="-2.54" y="-2.54" visible="pin" length="short"/>
<pin name="6" x="-2.54" y="-5.08" visible="pin" length="short"/>
<pin name="7" x="-2.54" y="-7.62" visible="pin" length="short"/>
<circle x="1.016" y="7.62" radius="1.016" width="0.1524" layer="94"/>
<circle x="1.016" y="5.08" radius="1.016" width="0.1524" layer="94"/>
<circle x="1.016" y="2.54" radius="1.016" width="0.1524" layer="94"/>
<circle x="1.016" y="0" radius="1.016" width="0.1524" layer="94"/>
<circle x="1.016" y="-2.54" radius="1.016" width="0.1524" layer="94"/>
<circle x="1.016" y="-5.08" radius="1.016" width="0.1524" layer="94"/>
<circle x="1.016" y="-7.62" radius="1.016" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<text x="-5.08" y="10.922" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="PINHD-1X04" urn="urn:adsk.eagle:symbol:31968520/1" library_version="100">
<pin name="1" x="-2.54" y="5.08" length="short"/>
<pin name="2" x="-2.54" y="2.54" visible="pin" length="short"/>
<pin name="3" x="-2.54" y="0" length="short"/>
<pin name="4" x="-2.54" y="-2.54" length="short"/>
<circle x="1.016" y="5.08" radius="1.016" width="0.1524" layer="94"/>
<circle x="1.016" y="2.54" radius="1.016" width="0.1524" layer="94"/>
<circle x="1.016" y="0" radius="1.016" width="0.1524" layer="94"/>
<circle x="1.016" y="-2.54" radius="1.016" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<text x="-5.08" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X07" urn="urn:adsk.eagle:component:31968538/2" library_version="100">
<gates>
<gate name="G$1" symbol="PINHD-1X07" x="0" y="0"/>
</gates>
<devices>
<device name="_1X07M" package="1X07">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22477/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X04" urn="urn:adsk.eagle:component:31968535/2" library_version="100">
<gates>
<gate name="G$1" symbol="PINHD-1X04" x="0" y="0"/>
</gates>
<devices>
<device name="_1X04M" package="1X04">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22407/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="2025-03-22_04-32-02_Library">
<packages>
<package name="CONN_S4B-XH-A(LF)(SN)_JST">
<pad name="1" x="0" y="0" drill="0.9906" diameter="1.4986"/>
<pad name="2" x="2.5" y="0" drill="0.9906" diameter="1.4986"/>
<pad name="3" x="5" y="0" drill="0.9906" diameter="1.4986"/>
<pad name="4" x="7.5" y="0" drill="0.9906" diameter="1.4986"/>
<wire x1="0" y1="0" x2="0" y2="4.89" width="0.1524" layer="48"/>
<wire x1="2.5" y1="0" x2="2.5" y2="4.89" width="0.1524" layer="48"/>
<wire x1="0" y1="4.509" x2="-1.27" y2="4.509" width="0.1524" layer="48"/>
<wire x1="2.5" y1="4.509" x2="3.77" y2="4.509" width="0.1524" layer="48"/>
<wire x1="0" y1="4.509" x2="-0.254" y2="4.636" width="0.1524" layer="48"/>
<wire x1="0" y1="4.509" x2="-0.254" y2="4.382" width="0.1524" layer="48"/>
<wire x1="-0.254" y1="4.636" x2="-0.254" y2="4.382" width="0.1524" layer="48"/>
<wire x1="2.5" y1="4.509" x2="2.754" y2="4.636" width="0.1524" layer="48"/>
<wire x1="2.5" y1="4.509" x2="2.754" y2="4.382" width="0.1524" layer="48"/>
<wire x1="2.754" y1="4.636" x2="2.754" y2="4.382" width="0.1524" layer="48"/>
<wire x1="-2.448" y1="2.35" x2="-2.448" y2="13.145" width="0.1524" layer="48"/>
<wire x1="9.998" y1="2.35" x2="9.998" y2="13.145" width="0.1524" layer="48"/>
<wire x1="-2.448" y1="12.764" x2="9.998" y2="12.764" width="0.1524" layer="48"/>
<wire x1="-2.448" y1="12.764" x2="-2.194" y2="12.891" width="0.1524" layer="48"/>
<wire x1="-2.448" y1="12.764" x2="-2.194" y2="12.637" width="0.1524" layer="48"/>
<wire x1="-2.194" y1="12.891" x2="-2.194" y2="12.637" width="0.1524" layer="48"/>
<wire x1="9.998" y1="12.764" x2="9.744" y2="12.891" width="0.1524" layer="48"/>
<wire x1="9.998" y1="12.764" x2="9.744" y2="12.637" width="0.1524" layer="48"/>
<wire x1="9.744" y1="12.891" x2="9.744" y2="12.637" width="0.1524" layer="48"/>
<wire x1="0" y1="0" x2="12.919" y2="0" width="0.1524" layer="48"/>
<wire x1="0" y1="0" x2="12.919" y2="0" width="0.1524" layer="48"/>
<wire x1="12.538" y1="0" x2="12.538" y2="1.27" width="0.1524" layer="48"/>
<wire x1="12.538" y1="0" x2="12.538" y2="-1.27" width="0.1524" layer="48"/>
<wire x1="12.538" y1="0" x2="12.411" y2="0.254" width="0.1524" layer="48"/>
<wire x1="12.538" y1="0" x2="12.665" y2="0.254" width="0.1524" layer="48"/>
<wire x1="12.411" y1="0.254" x2="12.665" y2="0.254" width="0.1524" layer="48"/>
<wire x1="12.538" y1="0" x2="12.411" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="12.538" y1="0" x2="12.665" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="12.411" y1="-0.254" x2="12.665" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="-2.448" y1="2.35" x2="-13.243" y2="2.35" width="0.1524" layer="48"/>
<wire x1="3.775" y1="0" x2="-13.243" y2="0" width="0.1524" layer="48"/>
<wire x1="-12.862" y1="2.35" x2="-12.862" y2="3.62" width="0.1524" layer="48"/>
<wire x1="-12.862" y1="0" x2="-12.862" y2="-1.27" width="0.1524" layer="48"/>
<wire x1="-12.862" y1="2.35" x2="-12.989" y2="2.604" width="0.1524" layer="48"/>
<wire x1="-12.862" y1="2.35" x2="-12.735" y2="2.604" width="0.1524" layer="48"/>
<wire x1="-12.989" y1="2.604" x2="-12.735" y2="2.604" width="0.1524" layer="48"/>
<wire x1="-12.862" y1="0" x2="-12.989" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="-12.862" y1="0" x2="-12.735" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="-12.989" y1="-0.254" x2="-12.735" y2="-0.254" width="0.1524" layer="48"/>
<wire x1="-2.448" y1="2.35" x2="-11.973" y2="2.35" width="0.1524" layer="48"/>
<wire x1="-2.448" y1="-9.207" x2="-11.973" y2="-9.207" width="0.1524" layer="48"/>
<wire x1="-11.592" y1="2.35" x2="-11.592" y2="-9.207" width="0.1524" layer="48"/>
<wire x1="-11.592" y1="2.35" x2="-11.719" y2="2.096" width="0.1524" layer="48"/>
<wire x1="-11.592" y1="2.35" x2="-11.465" y2="2.096" width="0.1524" layer="48"/>
<wire x1="-11.719" y1="2.096" x2="-11.465" y2="2.096" width="0.1524" layer="48"/>
<wire x1="-11.592" y1="-9.207" x2="-11.719" y2="-8.953" width="0.1524" layer="48"/>
<wire x1="-11.592" y1="-9.207" x2="-11.465" y2="-8.953" width="0.1524" layer="48"/>
<wire x1="-11.719" y1="-8.953" x2="-11.465" y2="-8.953" width="0.1524" layer="48"/>
<text x="-12.0048" y="-13.271" size="1.27" layer="48" ratio="6">Default Padstyle: EX59Y59D39P</text>
<text x="-12.7674" y="-15.176" size="1.27" layer="48" ratio="6">1st Mtg Padstyle: RX80Y120D50P</text>
<text x="-12.3775" y="-17.081" size="1.27" layer="48" ratio="6">2nd Mtg Padstyle: EX70Y70D70P</text>
<text x="-12.3775" y="-18.986" size="1.27" layer="48" ratio="6">3rd Mtg Padstyle: EX70Y70D70P</text>
<text x="-12.581" y="-20.891" size="1.27" layer="48" ratio="6">Left Mtg Padstyle: EX60Y60D30P</text>
<text x="-13.1573" y="-22.796" size="1.27" layer="48" ratio="6">Right Mtg Padstyle: EX51Y51D51P</text>
<text x="-11.0386" y="-24.701" size="1.27" layer="48" ratio="6">Alt Padstyle 1: OX60Y90D30P</text>
<text x="-11.0386" y="-26.606" size="1.27" layer="48" ratio="6">Alt Padstyle 2: OX90Y60D30P</text>
<text x="-2.8286" y="5.017" size="0.635" layer="48" ratio="4">0.098in/2.5mm</text>
<text x="-0.2674" y="13.272" size="0.635" layer="48" ratio="4">0.49in/12.446mm</text>
<text x="13.046" y="-0.3175" size="0.635" layer="48" ratio="4">0in/0mm</text>
<text x="-20.8786" y="0.8575" size="0.635" layer="48" ratio="4">0.093in/2.35mm</text>
<text x="-20.7611" y="-3.746" size="0.635" layer="48" ratio="4">0.455in/11.557mm</text>
<wire x1="-2.575" y1="-9.334" x2="10.125" y2="-9.334" width="0.1524" layer="21"/>
<wire x1="10.125" y1="-9.334" x2="10.125" y2="2.477" width="0.1524" layer="21"/>
<wire x1="10.125" y1="2.477" x2="-2.575" y2="2.477" width="0.1524" layer="21"/>
<wire x1="-2.575" y1="2.477" x2="-2.575" y2="-9.334" width="0.1524" layer="21"/>
<wire x1="-3.972" y1="0" x2="-4.734" y2="0" width="0.508" layer="21" curve="-180"/>
<wire x1="-4.734" y1="0" x2="-3.972" y2="0" width="0.508" layer="21" curve="-180"/>
<wire x1="-2.448" y1="-9.207" x2="9.998" y2="-9.207" width="0.1524" layer="51"/>
<wire x1="9.998" y1="-9.207" x2="9.998" y2="2.35" width="0.1524" layer="51"/>
<wire x1="9.998" y1="2.35" x2="-2.448" y2="2.35" width="0.1524" layer="51"/>
<wire x1="-2.448" y1="2.35" x2="-2.448" y2="-9.207" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-1.905" x2="-0.381" y2="-1.905" width="0.508" layer="51" curve="-180"/>
<wire x1="-0.381" y1="-1.905" x2="0.381" y2="-1.905" width="0.508" layer="51" curve="-180"/>
<wire x1="-3.972" y1="0" x2="-4.734" y2="0" width="0.508" layer="22" curve="-180"/>
<wire x1="-4.734" y1="0" x2="-3.972" y2="0" width="0.508" layer="22" curve="-180"/>
<text x="0.5038" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="2.0462" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="CONN_04P_1">
<pin name="1" x="0" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="0" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="4" x="0" y="-7.62" visible="pad" length="middle" direction="pas"/>
<wire x1="10.16" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="0.8467" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-1.6933" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-4.2333" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="8.89" y2="-6.7733" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="-0.8467" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-3.3867" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-5.9267" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="8.89" y2="-8.4667" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="12.7" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="4.1646" y="5.3086" size="2.083" layer="95" ratio="6">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="S4B-XH-A(LF)(SN)" prefix="J">
<gates>
<gate name="A" symbol="CONN_04P_1" x="0" y="0"/>
</gates>
<devices>
<device name="CONN_S4B-XH-A(LF)(SN)_JST" package="CONN_S4B-XH-A(LF)(SN)_JST">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="S4B-XH-A(LF)(SN)" constant="no"/>
<attribute name="MFR_NAME" value="JST" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="2025-03-23_04-23-12_Library">
<packages>
<package name="LED_SMLD12_ROM">
<smd name="1" x="-0.6032" y="0" dx="0.3937" dy="0.8128" layer="1"/>
<smd name="2" x="0.6032" y="0" dx="0.3937" dy="0.8128" layer="1"/>
<wire x1="-0.8001" y1="0.6604" x2="-0.8001" y2="5.8674" width="0.1524" layer="48"/>
<wire x1="0.8001" y1="0.6604" x2="0.8001" y2="5.8674" width="0.1524" layer="48"/>
<wire x1="-0.8001" y1="5.4864" x2="-2.0701" y2="5.4864" width="0.1524" layer="48"/>
<wire x1="0.8001" y1="5.4864" x2="2.0701" y2="5.4864" width="0.1524" layer="48"/>
<wire x1="-0.8001" y1="5.4864" x2="-1.0541" y2="5.6134" width="0.1524" layer="48"/>
<wire x1="-0.8001" y1="5.4864" x2="-1.0541" y2="5.3594" width="0.1524" layer="48"/>
<wire x1="-1.0541" y1="5.6134" x2="-1.0541" y2="5.3594" width="0.1524" layer="48"/>
<wire x1="0.8001" y1="5.4864" x2="1.0541" y2="5.6134" width="0.1524" layer="48"/>
<wire x1="0.8001" y1="5.4864" x2="1.0541" y2="5.3594" width="0.1524" layer="48"/>
<wire x1="1.0541" y1="5.6134" x2="1.0541" y2="5.3594" width="0.1524" layer="48"/>
<wire x1="1.0541" y1="0.4064" x2="-4.5974" y2="0.4064" width="0.1524" layer="48"/>
<wire x1="1.0541" y1="-0.4064" x2="-4.5974" y2="-0.4064" width="0.1524" layer="48"/>
<wire x1="-4.2164" y1="0.4064" x2="-4.2164" y2="1.6764" width="0.1524" layer="48"/>
<wire x1="-4.2164" y1="-0.4064" x2="-4.2164" y2="-1.6764" width="0.1524" layer="48"/>
<wire x1="-4.2164" y1="0.4064" x2="-4.3434" y2="0.6604" width="0.1524" layer="48"/>
<wire x1="-4.2164" y1="0.4064" x2="-4.0894" y2="0.6604" width="0.1524" layer="48"/>
<wire x1="-4.3434" y1="0.6604" x2="-4.0894" y2="0.6604" width="0.1524" layer="48"/>
<wire x1="-4.2164" y1="-0.4064" x2="-4.3434" y2="-0.6604" width="0.1524" layer="48"/>
<wire x1="-4.2164" y1="-0.4064" x2="-4.0894" y2="-0.6604" width="0.1524" layer="48"/>
<wire x1="-4.3434" y1="-0.6604" x2="-4.0894" y2="-0.6604" width="0.1524" layer="48"/>
<text x="-16.9323" y="-5.7404" size="1.27" layer="48" ratio="6">Default Pad Style: RX15p5Y32D0T</text>
<text x="-15.3899" y="-7.0104" size="1.27" layer="48" ratio="6">Alt 1 Pad Style: OX60Y90D30P</text>
<text x="-15.3899" y="-8.2804" size="1.27" layer="48" ratio="6">Alt 2 Pad Style: EX90Y60D30P</text>
<text x="-3.4661" y="5.9944" size="0.635" layer="48" ratio="4">0.063in/1.6mm</text>
<text x="-12.8092" y="-0.3175" size="0.635" layer="48" ratio="4">0.032in/0.813mm</text>
<wire x1="-1.8161" y1="0" x2="-3.0861" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0.635" x2="-2.8321" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.127" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.0701" y1="0.635" x2="-2.0701" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.0989" y1="-0.5334" x2="0.0989" y2="-0.5334" width="0.1524" layer="21"/>
<wire x1="0.0989" y1="0.5334" x2="-0.0989" y2="0.5334" width="0.1524" layer="21"/>
<wire x1="-1.8161" y1="0" x2="-3.0861" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0.635" x2="-2.8321" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-2.8321" y1="0" x2="-2.0701" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.0701" y1="0.635" x2="-2.0701" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-0.8001" y1="-0.4064" x2="0.8001" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.8001" y1="-0.4064" x2="0.8001" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="0.8001" y1="0.4064" x2="-0.8001" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.8001" y1="0.4064" x2="-0.8001" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.6" y1="-0.4064" x2="0.6" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="0.6" y1="0.4064" x2="-0.6" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.6" y1="0.4064" x2="-0.6" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="-0.6" y1="-0.4064" x2="0.6" y2="-0.4064" width="0.1524" layer="51"/>
<polygon width="0.0254" layer="41" pour="solid">
<vertex x="-0.3556" y="-0.3556"/>
<vertex x="0.3556" y="-0.3556"/>
<vertex x="0.3556" y="0.3556"/>
<vertex x="-0.3556" y="0.3556"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="LED">
<pin name="2" x="0" y="0" visible="off" length="short" direction="pas"/>
<pin name="1" x="10.16" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.2032" layer="94"/>
<wire x1="3.175" y1="0" x2="3.81" y2="0" width="0.2032" layer="94"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="1.905" width="0.2032" layer="94"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.2032" layer="94"/>
<wire x1="6.35" y1="4.445" x2="6.985" y2="3.81" width="0.2032" layer="94"/>
<wire x1="6.985" y1="3.81" x2="8.255" y2="5.08" width="0.2032" layer="94"/>
<wire x1="8.255" y1="3.81" x2="8.89" y2="3.175" width="0.2032" layer="94"/>
<wire x1="8.89" y1="3.175" x2="10.16" y2="4.445" width="0.2032" layer="94"/>
<wire x1="8.255" y1="5.08" x2="7.62" y2="5.08" width="0.2032" layer="94"/>
<wire x1="7.62" y1="5.08" x2="8.255" y2="4.445" width="0.2032" layer="94"/>
<wire x1="8.255" y1="4.445" x2="8.255" y2="5.08" width="0.2032" layer="94"/>
<wire x1="10.16" y1="4.445" x2="9.525" y2="4.445" width="0.2032" layer="94"/>
<wire x1="9.525" y1="4.445" x2="10.16" y2="3.81" width="0.2032" layer="94"/>
<wire x1="10.16" y1="3.81" x2="10.16" y2="4.445" width="0.2032" layer="94"/>
<wire x1="6.985" y1="2.54" x2="8.255" y2="3.81" width="0.2032" layer="94"/>
<wire x1="6.35" y1="0" x2="3.81" y2="1.905" width="0.2032" layer="94"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="0" width="0.2032" layer="94"/>
<wire x1="5.08" y1="3.175" x2="6.35" y2="4.445" width="0.2032" layer="94"/>
<text x="-3.8831" y="-9.3599" size="3.48" layer="96" ratio="10">&gt;Value</text>
<text x="-2.8148" y="-6.1849" size="3.48" layer="95" ratio="10">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMLEN3WBC8W1" prefix="R">
<gates>
<gate name="A" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="LED_SMLD12_ROM" package="LED_SMLD12_ROM">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="SMLEN3WBC8W1" constant="no"/>
<attribute name="MFR_NAME" value="ROHM Semiconductor" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="TMC2209_NewFootprint" library_urn="urn:adsk.wipprod:fs.file:vf.1IN8CW9eSw2m0OrUd3zOug" deviceset="TMC2209-LA-T" device="QFN28_5X5_3X8_EPAD_TRI"/>
<part name="SUPPLY1" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="SUPPLY2" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="R3" library="220R" deviceset="CRCW0603220RFKEA" device="RES_CRCW_0603"/>
<part name="R4" library="2025-03-23_04-23-12_Library" deviceset="SMLEN3WBC8W1" device="LED_SMLD12_ROM"/>
<part name="SUPPLY3" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="SUPPLY4" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="R1" library="res.12ohm" deviceset="WSLT2010R1200FEB18" device="RES_WSLT2010_VIS"/>
<part name="R2" library="res.12ohm" deviceset="WSLT2010R1200FEB18" device="RES_WSLT2010_VIS"/>
<part name="R5" library="CRCW06031K00FKEA" deviceset="CRCW06031K00FKEA" device=""/>
<part name="C1" library="100nF_Cap" deviceset="CL10B104KB8NNNC" device="CAP_CL10_SAM"/>
<part name="D1" library="WL-SMCW_0603BLED" deviceset="WL-SMCW_0603" device=""/>
<part name="SUPPLY5" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="SUPPLY6" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="R6" library="2025-03-22_00-16-48_Library" deviceset="CRCW0603100KFKEA" device="RES_CRCW_0603_VIS"/>
<part name="SUPPLY7" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="C2" library="C0805C223F5GEC7210" deviceset="C0805C223F5GEC7210" device=""/>
<part name="C3" library="10uF" deviceset="CL32B106KBJNNNE" device="CAP_CL32_SAM"/>
<part name="C4" library="10uF" deviceset="CL32B106KBJNNNE" device="CAP_CL32_SAM"/>
<part name="C5" library="100nF_Cap" deviceset="CL10B104KB8NNNC" device="CAP_CL10_SAM"/>
<part name="C6" library="100nF_Cap" deviceset="CL10B104KB8NNNC" device="CAP_CL10_SAM"/>
<part name="R7" library="CRCW06031R10FKEA" deviceset="CRCW06031R10FKEA" device=""/>
<part name="C7" library="100nF_Cap" deviceset="CL10B104KB8NNNC" device="CAP_CL10_SAM"/>
<part name="C8" library="UMK107BJ105KA-T" deviceset="UMK107BJ105KA-T" device=""/>
<part name="R8" library="CRCW06031K00FKEA" deviceset="CRCW06031K00FKEA" device=""/>
<part name="C9" library="2.2uF" deviceset="CC0805KKX7R9BB225" device="CAP_CC0805_YAG"/>
<part name="SUPPLY8" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="SUPPLY9" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="J2" library="2025-03-22_04-08-40_Library" deviceset="S2B-PH-K-S(LF)(SN)" device="CONN_S2B-PH-K-S_JST"/>
<part uuid="2882400019" name="J1" library="2025-03-22_04-32-02_Library" deviceset="S4B-XH-A(LF)(SN)" device="CONN_S4B-XH-A(LF)(SN)_JST" value="S4B-XH-A(LF)(SN)CONN_S4B-XH-A(LF)(SN)_JST"/>
<part name="U$2" library="Tinkercad" library_urn="urn:adsk.eagle:library:30890021" deviceset="PINHD-1X07" device="_1X07M" package3d_urn="urn:adsk.eagle:package:22477/2"/>
<part name="U$3" library="Tinkercad" library_urn="urn:adsk.eagle:library:30890021" deviceset="PINHD-1X04" device="_1X04M" package3d_urn="urn:adsk.eagle:package:22407/2"/>
<part name="SUPPLY10" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="U$1" library="Tinkercad" library_urn="urn:adsk.eagle:library:30890021" deviceset="PINHD-1X04" device="_1X04M" package3d_urn="urn:adsk.eagle:package:22407/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="58.42" y="78.74" smashed="yes">
<attribute name="NAME" x="71.4746" y="85.3186" size="2.083" layer="95" ratio="6"/>
<attribute name="VALUE" x="78.4552" y="85.3186" size="0.8128" layer="96" ratio="6"/>
</instance>
<instance part="SUPPLY1" gate="G$1" x="142.24" y="43.18" smashed="yes">
<attribute name="VALUE" x="142.24" y="40.64" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="SUPPLY2" gate="G$1" x="149.86" y="43.18" smashed="yes">
<attribute name="VALUE" x="149.86" y="40.64" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="R3" gate="A" x="35.56" y="53.34" smashed="yes">
<attribute name="VALUE" x="35.4869" y="51.0921" size="0.508" layer="96" ratio="10"/>
<attribute name="NAME" x="35.9202" y="53.8861" size="1.27" layer="95" ratio="10"/>
</instance>
<instance part="R4" gate="A" x="30.48" y="53.34" smashed="yes" rot="R180">
<attribute name="VALUE" x="31.0611" y="47.4599" size="0.508" layer="96" ratio="10" rot="R180"/>
<attribute name="NAME" x="22.8808" y="55.4609" size="1.27" layer="95" ratio="10" rot="R180"/>
</instance>
<instance part="SUPPLY3" gate="G$1" x="15.24" y="48.26" smashed="yes">
<attribute name="VALUE" x="15.24" y="45.72" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="SUPPLY4" gate="G$1" x="83.82" y="15.24" smashed="yes">
<attribute name="VALUE" x="83.82" y="12.7" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="R1" gate="A" x="142.24" y="48.26" smashed="yes" rot="R90">
<attribute name="VALUE" x="144.2339" y="48.1869" size="0.508" layer="96" ratio="10" rot="R90"/>
<attribute name="NAME" x="141.6939" y="48.1122" size="0.8128" layer="95" ratio="10" rot="R90"/>
</instance>
<instance part="R2" gate="A" x="149.86" y="48.26" smashed="yes" rot="R90">
<attribute name="VALUE" x="151.5999" y="47.9329" size="0.6096" layer="96" ratio="10" rot="R90"/>
<attribute name="NAME" x="149.5679" y="48.3662" size="0.8128" layer="95" ratio="10" rot="R90"/>
</instance>
<instance part="R5" gate="G$1" x="127" y="30.48" smashed="yes">
<attribute name="NAME" x="118.613559375" y="31.24348125" size="1.27" layer="95"/>
<attribute name="VALUE" x="121.14803125" y="27.171359375" size="0.8128" layer="96"/>
</instance>
<instance part="C1" gate="A" x="114.3" y="25.4" smashed="yes" rot="R270">
<attribute name="VALUE" x="111.7981" y="24.4571" size="0.254" layer="96" ratio="10" rot="R270"/>
<attribute name="NAME" x="115.2952" y="22.3901" size="0.8128" layer="95" ratio="10"/>
</instance>
<instance part="D1" gate="G$1" x="149.86" y="30.48" smashed="yes" rot="R180">
<attribute name="NAME" x="151.848" y="26.508" size="1.27" layer="95" rot="R180"/>
<attribute name="VALUE" x="151.218" y="33.138" size="0.508" layer="96" rot="R180"/>
</instance>
<instance part="SUPPLY5" gate="G$1" x="114.3" y="12.7" smashed="yes">
<attribute name="VALUE" x="114.3" y="10.16" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="SUPPLY6" gate="G$1" x="157.48" y="12.7" smashed="yes">
<attribute name="VALUE" x="157.48" y="10.16" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="R6" gate="A" x="99.06" y="27.94" smashed="yes" rot="R270">
<attribute name="VALUE" x="96.8121" y="27.5051" size="0.4064" layer="96" ratio="10" rot="R270"/>
<attribute name="NAME" x="100.1822" y="26.4541" size="0.8128" layer="95" ratio="10"/>
</instance>
<instance part="SUPPLY7" gate="G$1" x="99.06" y="10.16" smashed="yes">
<attribute name="VALUE" x="99.06" y="7.62" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="C2" gate="G$1" x="33.02" y="71.12" smashed="yes" rot="R90">
<attribute name="NAME" x="30.734" y="72.89706875" size="0.8128" layer="95" rot="R180"/>
<attribute name="VALUE" x="36.07648125" y="68.326" size="0.508" layer="96" rot="R90"/>
</instance>
<instance part="C3" gate="A" x="35.56" y="119.38" smashed="yes" rot="R90">
<attribute name="VALUE" x="38.5699" y="118.2909" size="0.4064" layer="96" ratio="10" rot="R90"/>
<attribute name="NAME" x="35.0728" y="125.4379" size="1.27" layer="95" ratio="10" rot="R180"/>
</instance>
<instance part="C4" gate="A" x="45.72" y="119.38" smashed="yes" rot="R90">
<attribute name="VALUE" x="48.7299" y="118.2909" size="0.4064" layer="96" ratio="10" rot="R90"/>
<attribute name="NAME" x="45.2328" y="125.4379" size="1.27" layer="95" ratio="10" rot="R180"/>
</instance>
<instance part="C5" gate="A" x="55.88" y="119.38" smashed="yes" rot="R90">
<attribute name="VALUE" x="58.8899" y="117.7829" size="0.4064" layer="96" ratio="10" rot="R90"/>
<attribute name="NAME" x="55.3928" y="124.9299" size="1.016" layer="95" ratio="10" rot="R180"/>
</instance>
<instance part="C6" gate="A" x="66.04" y="119.38" smashed="yes" rot="R90">
<attribute name="VALUE" x="69.0499" y="117.7829" size="0.4064" layer="96" ratio="10" rot="R90"/>
<attribute name="NAME" x="65.5528" y="124.9299" size="1.016" layer="95" ratio="10" rot="R180"/>
</instance>
<instance part="R7" gate="G$1" x="76.2" y="106.68" smashed="yes" rot="R90">
<attribute name="NAME" x="73.664440625" y="111.75851875" size="1.016" layer="95" rot="R180"/>
<attribute name="VALUE" x="80.016640625" y="101.08203125" size="0.8128" layer="96" rot="R90"/>
</instance>
<instance part="C7" gate="A" x="96.52" y="111.76" smashed="yes" rot="R180">
<attribute name="VALUE" x="97.6091" y="114.2619" size="0.4064" layer="96" ratio="10" rot="R180"/>
<attribute name="NAME" x="90.4032" y="110.5281" size="1.016" layer="95" ratio="10"/>
</instance>
<instance part="C8" gate="G$1" x="76.2" y="121.92" smashed="yes" rot="R90">
<attribute name="NAME" x="72.38906875" y="121.92" size="1.77843125" layer="95" rot="R90"/>
<attribute name="VALUE" x="79.25648125" y="119.888" size="0.508" layer="96" rot="R90"/>
</instance>
<instance part="R8" gate="G$1" x="38.1" y="33.02" smashed="yes">
<attribute name="NAME" x="29.967559375" y="33.52948125" size="0.8128" layer="95"/>
<attribute name="VALUE" x="34.02603125" y="30.219359375" size="0.508" layer="96"/>
</instance>
<instance part="C9" gate="A" x="66.04" y="25.4" smashed="yes" rot="R270">
<attribute name="VALUE" x="63.0301" y="28.5211" size="0.508" layer="96" ratio="10" rot="R270"/>
<attribute name="NAME" x="66.7812" y="22.6441" size="0.6096" layer="95" ratio="10"/>
</instance>
<instance part="SUPPLY8" gate="G$1" x="66.04" y="15.24" smashed="yes">
<attribute name="VALUE" x="66.04" y="12.7" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="SUPPLY9" gate="G$1" x="35.56" y="91.44" smashed="yes">
<attribute name="VALUE" x="35.56" y="88.9" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="J2" gate="A" x="71.12" y="157.48" smashed="yes" rot="R90">
<attribute name="NAME" x="65.8114" y="161.6446" size="2.083" layer="95" ratio="6" rot="R90"/>
</instance>
<instance part="J1" gate="A" x="48.26" y="160.02" smashed="yes" rot="R90">
<attribute name="NAME" x="42.9514" y="164.1846" size="2.083" layer="95" ratio="6" rot="R90"/>
</instance>
<instance part="U$2" gate="G$1" x="111.76" y="132.08" smashed="yes" rot="R270">
<attribute name="NAME" x="122.682" y="137.16" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="99.06" y="137.16" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="U$3" gate="G$1" x="134.62" y="137.16" smashed="yes" rot="R270">
<attribute name="NAME" x="143.002" y="142.24" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="127" y="142.24" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY10" gate="G$1" x="55.88" y="45.72" smashed="yes">
<attribute name="VALUE" x="55.88" y="43.18" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="U$1" gate="G$1" x="142.24" y="99.06" smashed="yes">
<attribute name="NAME" x="137.16" y="107.442" size="1.778" layer="95"/>
<attribute name="VALUE" x="137.16" y="91.44" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="BRB" class="0">
<segment>
<wire x1="106.68" y1="73.66" x2="149.86" y2="73.66" width="0.1524" layer="91"/>
<wire x1="149.86" y1="73.66" x2="149.86" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R2" gate="A" pin="2"/>
<label x="149.86" y="73.66" size="1.016" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="BRB"/>
</segment>
</net>
<net name="BRA" class="0">
<segment>
<wire x1="106.68" y1="63.5" x2="142.24" y2="63.5" width="0.1524" layer="91"/>
<wire x1="142.24" y1="63.5" x2="142.24" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R1" gate="A" pin="2"/>
<label x="142.24" y="63.5" size="1.016" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="BRA"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<wire x1="20.32" y1="53.34" x2="15.24" y2="53.34" width="0.1524" layer="91"/>
<wire x1="15.24" y1="53.34" x2="15.24" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="G$1" pin="GND"/>
<pinref part="R4" gate="A" pin="1"/>
</segment>
<segment>
<wire x1="81.28" y1="25.4" x2="81.28" y2="22.86" width="0.1524" layer="91"/>
<wire x1="81.28" y1="22.86" x2="83.82" y2="22.86" width="0.1524" layer="91"/>
<wire x1="83.82" y1="22.86" x2="86.36" y2="22.86" width="0.1524" layer="91"/>
<wire x1="86.36" y1="22.86" x2="86.36" y2="25.4" width="0.1524" layer="91"/>
<junction x="83.82" y="22.86"/>
<wire x1="83.82" y1="22.86" x2="83.82" y2="17.78" width="0.1524" layer="91"/>
<pinref part="SUPPLY4" gate="G$1" pin="GND"/>
<label x="81.28" y="25.4" size="0.8128" layer="95" rot="R90" xref="yes"/>
<label x="86.36" y="25.4" size="0.8128" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<wire x1="60.96" y1="73.66" x2="58.42" y2="73.66" width="0.1524" layer="91"/>
<label x="58.42" y="73.66" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="GND_2"/>
</segment>
<segment>
<wire x1="106.68" y1="50.8" x2="111.76" y2="50.8" width="0.1524" layer="91"/>
<label x="111.76" y="50.8" size="1.27" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="GND"/>
</segment>
<segment>
<pinref part="R1" gate="A" pin="1"/>
<pinref part="SUPPLY1" gate="G$1" pin="GND"/>
<wire x1="142.24" y1="45.72" x2="142.24" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2" gate="A" pin="1"/>
<pinref part="SUPPLY2" gate="G$1" pin="GND"/>
<wire x1="149.86" y1="45.72" x2="149.86" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="114.3" y1="17.78" x2="114.3" y2="15.24" width="0.1524" layer="91"/>
<pinref part="SUPPLY5" gate="G$1" pin="GND"/>
<pinref part="C1" gate="A" pin="2"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="-"/>
<wire x1="152.4" y1="30.48" x2="157.48" y2="30.48" width="0.1524" layer="91"/>
<wire x1="157.48" y1="30.48" x2="157.48" y2="15.24" width="0.1524" layer="91"/>
<pinref part="SUPPLY6" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="R6" gate="A" pin="1"/>
<pinref part="SUPPLY7" gate="G$1" pin="GND"/>
<wire x1="99.06" y1="12.7" x2="99.06" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="106.68" y1="78.74" x2="111.76" y2="78.74" width="0.1524" layer="91"/>
<label x="111.76" y="78.74" size="0.8128" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="EPAD"/>
</segment>
<segment>
<pinref part="C9" gate="A" pin="2"/>
<pinref part="SUPPLY8" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C3" gate="A" pin="1"/>
<wire x1="35.56" y1="119.38" x2="35.56" y2="96.52" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="35.56" y1="96.52" x2="35.56" y2="93.98" width="0.1524" layer="91"/>
<wire x1="76.2" y1="96.52" x2="66.04" y2="96.52" width="0.1524" layer="91"/>
<junction x="35.56" y="96.52"/>
<pinref part="C4" gate="A" pin="1"/>
<wire x1="66.04" y1="96.52" x2="55.88" y2="96.52" width="0.1524" layer="91"/>
<wire x1="55.88" y1="96.52" x2="45.72" y2="96.52" width="0.1524" layer="91"/>
<wire x1="45.72" y1="96.52" x2="35.56" y2="96.52" width="0.1524" layer="91"/>
<wire x1="45.72" y1="119.38" x2="45.72" y2="96.52" width="0.1524" layer="91"/>
<junction x="45.72" y="96.52"/>
<pinref part="C5" gate="A" pin="1"/>
<wire x1="55.88" y1="119.38" x2="55.88" y2="96.52" width="0.1524" layer="91"/>
<junction x="55.88" y="96.52"/>
<pinref part="C6" gate="A" pin="1"/>
<wire x1="66.04" y1="119.38" x2="66.04" y2="96.52" width="0.1524" layer="91"/>
<junction x="66.04" y="96.52"/>
<pinref part="SUPPLY9" gate="G$1" pin="GND"/>
</segment>
<segment>
<label x="71.12" y="142.24" size="0.8128" layer="95" rot="R270" xref="yes"/>
<wire x1="71.12" y1="142.24" x2="71.12" y2="157.48" width="0.1524" layer="91"/>
<pinref part="J2" gate="A" pin="1"/>
</segment>
<segment>
<wire x1="60.96" y1="48.26" x2="55.88" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SUPPLY10" gate="G$1" pin="GND"/>
<pinref part="U1" gate="A" pin="CLK"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="1"/>
<wire x1="119.38" y1="134.62" x2="119.38" y2="149.86" width="0.1524" layer="91"/>
<label x="119.38" y="149.86" size="0.6096" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<wire x1="124.46" y1="96.52" x2="139.7" y2="96.52" width="0.1524" layer="91"/>
<label x="124.46" y="96.52" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="U$1" gate="G$1" pin="4"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<wire x1="50.8" y1="160.02" x2="50.8" y2="144.78" width="0.1524" layer="91"/>
<label x="50.8" y="144.78" size="1.27" layer="95" rot="MR270" xref="yes"/>
<pinref part="J1" gate="A" pin="2"/>
</segment>
<segment>
<wire x1="106.68" y1="66.04" x2="111.76" y2="66.04" width="0.1524" layer="91"/>
<label x="111.76" y="66.04" size="1.27" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="OA1"/>
</segment>
</net>
<net name="B1" class="0">
<segment>
<wire x1="53.34" y1="160.02" x2="53.34" y2="144.78" width="0.1524" layer="91"/>
<label x="53.34" y="144.78" size="1.27" layer="95" rot="MR270" xref="yes"/>
<pinref part="J1" gate="A" pin="3"/>
</segment>
<segment>
<wire x1="106.68" y1="71.12" x2="111.76" y2="71.12" width="0.1524" layer="91"/>
<label x="111.76" y="71.12" size="1.27" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="OB1"/>
</segment>
</net>
<net name="DIAG" class="0">
<segment>
<wire x1="60.96" y1="53.34" x2="50.8" y2="53.34" width="0.1524" layer="91"/>
<pinref part="R3" gate="A" pin="1"/>
<wire x1="50.8" y1="53.34" x2="48.26" y2="53.34" width="0.1524" layer="91"/>
<junction x="50.8" y="53.34"/>
<wire x1="50.8" y1="53.34" x2="50.8" y2="48.26" width="0.1524" layer="91"/>
<wire x1="48.26" y1="48.26" x2="50.8" y2="48.26" width="0.1524" layer="91"/>
<label x="48.26" y="48.26" size="1.016" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="DIAG"/>
</segment>
<segment>
<label x="114.3" y="149.86" size="1.016" layer="95" rot="R90" xref="yes"/>
<wire x1="114.3" y1="149.86" x2="114.3" y2="134.62" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R3" gate="A" pin="2"/>
<wire x1="30.48" y1="53.34" x2="35.56" y2="53.34" width="0.1524" layer="91"/>
<pinref part="R4" gate="A" pin="2"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<wire x1="48.26" y1="144.78" x2="48.26" y2="160.02" width="0.1524" layer="91"/>
<label x="48.26" y="144.78" size="1.27" layer="95" rot="R270" xref="yes"/>
<pinref part="J1" gate="A" pin="1"/>
</segment>
<segment>
<wire x1="106.68" y1="58.42" x2="111.76" y2="58.42" width="0.1524" layer="91"/>
<label x="111.76" y="58.42" size="1.27" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="OA2"/>
</segment>
</net>
<net name="B2" class="0">
<segment>
<wire x1="55.88" y1="144.78" x2="55.88" y2="160.02" width="0.1524" layer="91"/>
<label x="55.88" y="144.78" size="1.27" layer="95" rot="MR270" xref="yes"/>
<pinref part="J1" gate="A" pin="4"/>
</segment>
<segment>
<wire x1="60.96" y1="78.74" x2="58.42" y2="78.74" width="0.1524" layer="91"/>
<label x="58.42" y="78.74" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="OB2"/>
</segment>
</net>
<net name="VCC_IO" class="0">
<segment>
<wire x1="106.68" y1="43.18" x2="109.22" y2="43.18" width="0.1524" layer="91"/>
<wire x1="109.22" y1="43.18" x2="109.22" y2="35.56" width="0.1524" layer="91"/>
<wire x1="109.22" y1="35.56" x2="109.22" y2="30.48" width="0.1524" layer="91"/>
<wire x1="109.22" y1="30.48" x2="114.3" y2="30.48" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="114.3" y1="30.48" x2="116.84" y2="30.48" width="0.1524" layer="91"/>
<wire x1="114.3" y1="25.4" x2="114.3" y2="30.48" width="0.1524" layer="91"/>
<junction x="114.3" y="30.48"/>
<pinref part="C1" gate="A" pin="1"/>
<junction x="109.22" y="35.56"/>
<wire x1="109.22" y1="35.56" x2="116.84" y2="35.56" width="0.1524" layer="91"/>
<label x="116.84" y="35.56" size="1.016" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="VCC_IO"/>
</segment>
<segment>
<wire x1="124.46" y1="101.6" x2="139.7" y2="101.6" width="0.1524" layer="91"/>
<label x="124.46" y="101.6" size="1.016" layer="95" rot="R180" xref="yes"/>
<pinref part="U$1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="137.16" y1="30.48" x2="144.78" y2="30.48" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="+"/>
</segment>
</net>
<net name="STDBY" class="0">
<segment>
<wire x1="106.68" y1="55.88" x2="111.76" y2="55.88" width="0.1524" layer="91"/>
<label x="111.76" y="55.88" size="0.8128" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="STDBY"/>
</segment>
<segment>
<pinref part="R6" gate="A" pin="2"/>
<wire x1="99.06" y1="27.94" x2="99.06" y2="30.48" width="0.1524" layer="91"/>
<label x="99.06" y="30.48" size="0.8128" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="MS1" class="0">
<segment>
<wire x1="60.96" y1="58.42" x2="58.42" y2="58.42" width="0.1524" layer="91"/>
<label x="58.42" y="58.42" size="0.8128" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="MS1_AD0"/>
</segment>
<segment>
<wire x1="109.22" y1="134.62" x2="109.22" y2="149.86" width="0.1524" layer="91"/>
<label x="109.22" y="149.86" size="1.016" layer="95" rot="R90" xref="yes"/>
<pinref part="U$2" gate="G$1" pin="5"/>
</segment>
</net>
<net name="MS2" class="0">
<segment>
<wire x1="60.96" y1="55.88" x2="58.42" y2="55.88" width="0.1524" layer="91"/>
<label x="58.42" y="55.88" size="0.8128" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="MS2_AD1"/>
</segment>
<segment>
<wire x1="111.76" y1="134.62" x2="111.76" y2="149.86" width="0.1524" layer="91"/>
<label x="111.76" y="149.86" size="1.016" layer="95" rot="R90" xref="yes"/>
<pinref part="U$2" gate="G$1" pin="4"/>
</segment>
</net>
<net name="STEP" class="0">
<segment>
<wire x1="106.68" y1="45.72" x2="111.76" y2="45.72" width="0.1524" layer="91"/>
<label x="111.76" y="45.72" size="0.8128" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="STEP"/>
</segment>
<segment>
<label x="137.16" y="154.94" size="0.8128" layer="95" rot="R90" xref="yes"/>
<wire x1="137.16" y1="154.94" x2="137.16" y2="139.7" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="DIR" class="0">
<segment>
<wire x1="106.68" y1="53.34" x2="111.76" y2="53.34" width="0.1524" layer="91"/>
<label x="111.76" y="53.34" size="0.8128" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="DIR"/>
</segment>
<segment>
<label x="139.7" y="154.94" size="0.8128" layer="95" rot="R90" xref="yes"/>
<wire x1="139.7" y1="154.94" x2="139.7" y2="139.7" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="CPO" class="0">
<segment>
<wire x1="60.96" y1="71.12" x2="40.64" y2="71.12" width="0.1524" layer="91"/>
<wire x1="40.64" y1="71.12" x2="40.64" y2="78.74" width="0.1524" layer="91"/>
<wire x1="40.64" y1="78.74" x2="33.02" y2="78.74" width="0.1524" layer="91"/>
<wire x1="33.02" y1="78.74" x2="33.02" y2="76.2" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<label x="50.8" y="71.12" size="0.6096" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="CPO"/>
</segment>
</net>
<net name="CPI" class="0">
<segment>
<wire x1="60.96" y1="68.58" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
<wire x1="40.64" y1="68.58" x2="40.64" y2="66.04" width="0.1524" layer="91"/>
<wire x1="40.64" y1="66.04" x2="33.02" y2="66.04" width="0.1524" layer="91"/>
<wire x1="33.02" y1="66.04" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<label x="50.8" y="68.58" size="0.6096" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="CPI"/>
</segment>
</net>
<net name="ENN" class="0">
<segment>
<wire x1="60.96" y1="76.2" x2="58.42" y2="76.2" width="0.1524" layer="91"/>
<label x="58.42" y="76.2" size="0.8128" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="ENN"/>
</segment>
<segment>
<wire x1="104.14" y1="134.62" x2="104.14" y2="149.86" width="0.1524" layer="91"/>
<label x="104.14" y="149.86" size="1.016" layer="95" rot="R90" xref="yes"/>
<pinref part="U$2" gate="G$1" pin="7"/>
</segment>
</net>
<net name="VREF" class="0">
<segment>
<wire x1="106.68" y1="48.26" x2="111.76" y2="48.26" width="0.1524" layer="91"/>
<label x="111.76" y="48.26" size="0.8128" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="VREF"/>
</segment>
<segment>
<label x="124.46" y="104.14" size="0.8128" layer="95" rot="R180" xref="yes"/>
<wire x1="124.46" y1="104.14" x2="139.7" y2="104.14" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="76.2" y1="119.38" x2="76.2" y2="116.84" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="VCP" class="0">
<segment>
<pinref part="C7" gate="A" pin="1"/>
<wire x1="96.52" y1="111.76" x2="99.06" y2="111.76" width="0.1524" layer="91"/>
<wire x1="99.06" y1="111.76" x2="99.06" y2="96.52" width="0.1524" layer="91"/>
<label x="99.06" y="96.52" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<wire x1="60.96" y1="66.04" x2="58.42" y2="66.04" width="0.1524" layer="91"/>
<label x="58.42" y="66.04" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="VCP"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="C7" gate="A" pin="2"/>
<wire x1="88.9" y1="111.76" x2="88.9" y2="132.08" width="0.1524" layer="91"/>
<wire x1="88.9" y1="132.08" x2="76.2" y2="132.08" width="0.1524" layer="91"/>
<wire x1="76.2" y1="132.08" x2="66.04" y2="132.08" width="0.1524" layer="91"/>
<wire x1="66.04" y1="132.08" x2="55.88" y2="132.08" width="0.1524" layer="91"/>
<wire x1="55.88" y1="132.08" x2="45.72" y2="132.08" width="0.1524" layer="91"/>
<wire x1="45.72" y1="132.08" x2="35.56" y2="132.08" width="0.1524" layer="91"/>
<wire x1="35.56" y1="132.08" x2="35.56" y2="127" width="0.1524" layer="91"/>
<pinref part="C3" gate="A" pin="2"/>
<wire x1="35.56" y1="132.08" x2="30.48" y2="132.08" width="0.1524" layer="91"/>
<junction x="35.56" y="132.08"/>
<pinref part="C4" gate="A" pin="2"/>
<wire x1="45.72" y1="127" x2="45.72" y2="132.08" width="0.1524" layer="91"/>
<junction x="45.72" y="132.08"/>
<pinref part="C5" gate="A" pin="2"/>
<wire x1="55.88" y1="127" x2="55.88" y2="132.08" width="0.1524" layer="91"/>
<junction x="55.88" y="132.08"/>
<pinref part="C6" gate="A" pin="2"/>
<wire x1="66.04" y1="127" x2="66.04" y2="132.08" width="0.1524" layer="91"/>
<junction x="66.04" y="132.08"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="76.2" y1="127" x2="76.2" y2="132.08" width="0.1524" layer="91"/>
<junction x="76.2" y="132.08"/>
<wire x1="88.9" y1="111.76" x2="88.9" y2="99.06" width="0.1524" layer="91"/>
<junction x="88.9" y="111.76"/>
<wire x1="88.9" y1="99.06" x2="88.9" y2="96.52" width="0.1524" layer="91"/>
<junction x="88.9" y="99.06"/>
<wire x1="88.9" y1="99.06" x2="93.98" y2="99.06" width="0.1524" layer="91"/>
<wire x1="93.98" y1="99.06" x2="93.98" y2="96.52" width="0.1524" layer="91"/>
<label x="30.48" y="132.08" size="1.27" layer="95" rot="R180" xref="yes"/>
<label x="93.98" y="96.52" size="1.27" layer="95" rot="R270" xref="yes"/>
<label x="88.9" y="96.52" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<wire x1="106.68" y1="60.96" x2="111.76" y2="60.96" width="0.1524" layer="91"/>
<label x="111.76" y="60.96" size="1.27" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="VS_2"/>
</segment>
<segment>
<wire x1="106.68" y1="76.2" x2="111.76" y2="76.2" width="0.1524" layer="91"/>
<label x="111.76" y="76.2" size="1.27" layer="95" xref="yes"/>
<pinref part="U1" gate="A" pin="VS"/>
</segment>
<segment>
<wire x1="73.66" y1="157.48" x2="73.66" y2="142.24" width="0.1524" layer="91"/>
<label x="73.66" y="142.24" size="1.016" layer="95" rot="R270" xref="yes"/>
<pinref part="J2" gate="A" pin="2"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<wire x1="60.96" y1="45.72" x2="58.42" y2="45.72" width="0.1524" layer="91"/>
<wire x1="58.42" y1="45.72" x2="58.42" y2="33.02" width="0.1524" layer="91"/>
<wire x1="58.42" y1="33.02" x2="53.34" y2="33.02" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="53.34" y1="33.02" x2="48.26" y2="33.02" width="0.1524" layer="91"/>
<wire x1="53.34" y1="33.02" x2="53.34" y2="38.1" width="0.1524" layer="91"/>
<wire x1="53.34" y1="38.1" x2="25.4" y2="38.1" width="0.1524" layer="91"/>
<label x="25.4" y="38.1" size="0.8128" layer="95" rot="R180" xref="yes"/>
<junction x="53.34" y="33.02"/>
<pinref part="U1" gate="A" pin="PDN_UART"/>
</segment>
<segment>
<wire x1="134.62" y1="154.94" x2="134.62" y2="139.7" width="0.1524" layer="91"/>
<label x="134.62" y="154.94" size="1.016" layer="95" rot="R90" xref="yes"/>
<pinref part="U$3" gate="G$1" pin="3"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="27.94" y1="33.02" x2="25.4" y2="33.02" width="0.1524" layer="91"/>
<label x="25.4" y="33.02" size="0.8128" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<wire x1="132.08" y1="154.94" x2="132.08" y2="139.7" width="0.1524" layer="91"/>
<label x="132.08" y="154.94" size="1.016" layer="95" rot="R90" xref="yes"/>
<pinref part="U$3" gate="G$1" pin="4"/>
</segment>
</net>
<net name="5VOUT" class="0">
<segment>
<wire x1="60.96" y1="60.96" x2="58.42" y2="60.96" width="0.1524" layer="91"/>
<label x="58.42" y="60.96" size="0.6096" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="5VOUT"/>
</segment>
<segment>
<pinref part="C9" gate="A" pin="1"/>
<wire x1="66.04" y1="25.4" x2="66.04" y2="27.94" width="0.1524" layer="91"/>
<label x="66.04" y="27.94" size="0.6096" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<wire x1="139.7" y1="99.06" x2="124.46" y2="99.06" width="0.1524" layer="91"/>
<label x="124.46" y="99.06" size="1.016" layer="95" rot="R180" xref="yes"/>
<pinref part="U$1" gate="G$1" pin="3"/>
</segment>
</net>
<net name="SPREAD" class="0">
<segment>
<wire x1="60.96" y1="63.5" x2="58.42" y2="63.5" width="0.1524" layer="91"/>
<label x="58.42" y="63.5" size="0.6096" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="SPREAD"/>
</segment>
<segment>
<wire x1="106.68" y1="134.62" x2="106.68" y2="149.86" width="0.1524" layer="91"/>
<label x="106.68" y="149.86" size="1.016" layer="95" rot="R90" xref="yes"/>
<pinref part="U$2" gate="G$1" pin="6"/>
</segment>
</net>
<net name="INDEX" class="0">
<segment>
<wire x1="60.96" y1="50.8" x2="58.42" y2="50.8" width="0.1524" layer="91"/>
<label x="58.42" y="50.8" size="0.6096" layer="95" rot="R180" xref="yes"/>
<pinref part="U1" gate="A" pin="INDEX"/>
</segment>
<segment>
<wire x1="116.84" y1="134.62" x2="116.84" y2="149.86" width="0.1524" layer="91"/>
<label x="116.84" y="149.86" size="1.016" layer="95" rot="R90" xref="yes"/>
<pinref part="U$2" gate="G$1" pin="2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
