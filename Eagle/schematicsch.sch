<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
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
<layer number="250" name="Descript" color="7" fill="1" visible="no" active="no"/>
<layer number="251" name="bxdocu" color="7" fill="1" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="_hhn_Pololu">
<description>&lt;h2&gt;&lt;b&gt;Pololu Modules&lt;/h2&gt;

&lt;pre&gt;&lt;b&gt;
SOURCE&lt;/b&gt;
&lt;a href="www.pololu.com/" target="_blank"&gt;www.pololu.com/&lt;/a&gt;&lt;/pre&gt;

&lt;pre&gt;&lt;b&gt;
CHANGELOG&lt;/b&gt;
&lt;b&gt;5.3.0&lt;/b&gt;  2013-10-09  changed:  symbol 'IOGS': pin SHDN: pas --&gt; in
                             (SHDN must not be left open)
5.2.0  2013-07-24  added:    VNH2SP30 and VNH3SP30 MD01B Motor Driver Carrier Board
                   changed:  Library Header
5.1.0  2013-07-02  added:    Voltage Regulator Modules D24V3A_V, D24V6A_V
5.0.0  2013-06-12  initial:  Adjustable Step Down Voltage Regulators Series D24V3A_V
&amp;nbsp;&lt;/pre&gt;&lt;/p&gt;

&lt;hr /&gt;

&lt;pre&gt;
Author: &lt;author&gt;Dipl.-Ing. FH Rainer Bayer&lt;/author&lt;/b&gt;
Heilbronn University  HHN         &lt;a href="http://www.hs-heilbronn.de/rainer.bayer" target="_blank"&gt;http://www.hs-heilbronn.de/rainer.bayer&lt;/a&gt; &amp;middot; &lt;a href="mailto:rainer.bayer@hs-heilbronn.de" target="_blank"&gt;rainer.bayer@hs-heilbronn.de&lt;/a&gt;
Engineering office    ing-rb:     &lt;a href="http://www.ing-rb.de/" target="_blank"&gt;http://www.ing-rb.de/&lt;/a&gt;                   &amp;middot; &lt;a href="mailto:eagle@ing-rb.de" target="_blank"&gt;eagle@ing-rb.de&lt;/a&gt;
Lectureship           dozent-rb:  &lt;a href="http://www.dozent-rb.de/" target="_blank"&gt;http://www.dozent-rb.de/&lt;/a&gt;                &amp;middot; &lt;a href="mailto:eagle@dozent-rb.de" target="_blank"&gt;eagle@dozent-rb.de&lt;/a&gt;&lt;/pre&gt;&lt;/author&gt;&lt;/pre&gt;</description>
<packages>
<package name="POLOLU_MD01B_P">
<description>&lt;p&gt;POLOLU MD01B&lt;br /&gt;
&lt;b&gt;plated&lt;/b&gt; auxilary OUTA-connections &lt;/p&gt;</description>
<wire x1="-19.05" y1="-14.9225" x2="-19.05" y2="14.9225" width="0.2032" layer="21"/>
<wire x1="-19.05" y1="14.9225" x2="19.05" y2="14.9225" width="0.2032" layer="21"/>
<wire x1="19.05" y1="14.9225" x2="19.05" y2="-14.9225" width="0.2032" layer="21"/>
<wire x1="19.05" y1="-14.9225" x2="-19.05" y2="-14.9225" width="0.2032" layer="21"/>
<wire x1="-18.7722" y1="8.4534" x2="-16.2322" y2="8.4534" width="0.1016" layer="39"/>
<wire x1="-16.2322" y1="8.4534" x2="-16.2322" y2="-11.8666" width="0.1016" layer="39"/>
<wire x1="-16.2322" y1="-11.8666" x2="-18.7722" y2="-11.8666" width="0.1016" layer="39"/>
<wire x1="-18.7722" y1="-11.8666" x2="-18.7722" y2="8.4534" width="0.1016" layer="39"/>
<wire x1="-17.8222" y1="7.5034" x2="-17.1822" y2="7.5034" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="7.5034" x2="-17.1822" y2="6.8634" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="6.8634" x2="-17.8222" y2="6.8634" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="6.8634" x2="-17.8222" y2="7.5034" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="4.9634" x2="-17.1822" y2="4.9634" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="4.9634" x2="-17.1822" y2="4.3234" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="4.3234" x2="-17.8222" y2="4.3234" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="4.3234" x2="-17.8222" y2="4.9634" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="2.4234" x2="-17.1822" y2="2.4234" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="2.4234" x2="-17.1822" y2="1.7834" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="1.7834" x2="-17.8222" y2="1.7834" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="1.7834" x2="-17.8222" y2="2.4234" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-0.1166" x2="-17.1822" y2="-0.1166" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-0.1166" x2="-17.1822" y2="-0.7566" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-0.7566" x2="-17.8222" y2="-0.7566" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-0.7566" x2="-17.8222" y2="-0.1166" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-2.6566" x2="-17.1822" y2="-2.6566" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-2.6566" x2="-17.1822" y2="-3.2966" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-3.2966" x2="-17.8222" y2="-3.2966" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-3.2966" x2="-17.8222" y2="-2.6566" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-5.1966" x2="-17.1822" y2="-5.1966" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-5.1966" x2="-17.1822" y2="-5.8366" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-5.8366" x2="-17.8222" y2="-5.8366" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-5.8366" x2="-17.8222" y2="-5.1966" width="0.1524" layer="51"/>
<wire x1="-18.7722" y1="8.4534" x2="-16.2322" y2="8.4534" width="0.1524" layer="51"/>
<wire x1="-16.2322" y1="8.4534" x2="-16.2322" y2="-6.7866" width="0.1524" layer="51"/>
<wire x1="-16.2322" y1="-6.7866" x2="-18.7722" y2="-6.7866" width="0.1524" layer="51"/>
<wire x1="-18.7722" y1="-6.7866" x2="-18.7722" y2="8.4534" width="0.1524" layer="51"/>
<wire x1="-16.2322" y1="-11.8666" x2="-18.7722" y2="-11.8666" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-8.3766" x2="-17.8222" y2="-8.3766" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-10.9166" x2="-17.8222" y2="-10.9166" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-7.7366" x2="-17.1822" y2="-7.7366" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-10.2766" x2="-17.1822" y2="-10.2766" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-8.3766" x2="-17.8222" y2="-7.7366" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-7.7366" x2="-17.1822" y2="-8.3766" width="0.1524" layer="51"/>
<wire x1="-17.8222" y1="-10.9166" x2="-17.8222" y2="-10.2766" width="0.1524" layer="51"/>
<wire x1="-17.1822" y1="-10.2766" x2="-17.1822" y2="-10.9166" width="0.1524" layer="51"/>
<wire x1="-18.7722" y1="-11.8666" x2="-18.7722" y2="-6.7866" width="0.1524" layer="51"/>
<wire x1="-16.2322" y1="-6.7866" x2="-16.2322" y2="-11.8666" width="0.1524" layer="51"/>
<pad name="OUTA2" x="-15.875" y="11.7475" drill="3"/>
<pad name="OUTA3" x="15.875" y="11.7475" drill="3"/>
<pad name="BYP" x="15.24" y="-6.0325" drill="2"/>
<pad name="OUTB" x="15.24" y="0.3175" drill="2"/>
<pad name="OUTA1" x="15.24" y="5.3975" drill="2"/>
<pad name="GND1" x="-17.526" y="-10.6045" drill="1" shape="square" first="yes"/>
<pad name="VIO" x="-17.526" y="-8.0645" drill="1"/>
<pad name="INB" x="-17.526" y="-5.5245" drill="1"/>
<pad name="ENB" x="-17.526" y="-2.9845" drill="1"/>
<pad name="SENSE" x="-17.526" y="-0.4445" drill="1"/>
<pad name="PWM" x="-17.526" y="2.0955" drill="1"/>
<pad name="ENA" x="-17.526" y="4.6355" drill="1"/>
<pad name="INA" x="-17.526" y="7.1755" drill="1"/>
<pad name="VMOT" x="-8.128" y="-11.1125" drill="2"/>
<pad name="GND2" x="-3.048" y="-11.1125" drill="2"/>
<text x="-19.05" y="15.24" size="1.4224" layer="25" ratio="9">&gt;NAME</text>
<text x="19.365" y="16.7" size="1.4224" layer="27" ratio="9" rot="R180">&gt;VALUE</text>
<text x="-15.8" y="6.6" size="1.27" layer="51" ratio="9">INA</text>
<text x="-15.8" y="4" size="1.27" layer="51" ratio="9">ENA</text>
<text x="-15.8" y="1.5" size="1.27" layer="51" ratio="9">PWM</text>
<text x="-15.8" y="-1.1" size="1.27" layer="51" ratio="9">SENSE</text>
<text x="-15.7" y="-3.7" size="1.27" layer="51" ratio="9">ENB</text>
<text x="-15.8" y="-6.1" size="1.27" layer="51" ratio="9">INB</text>
<text x="-15.8" y="-8.7" size="1.27" layer="51" ratio="9">VIO</text>
<text x="-15.8" y="-11.2" size="1.27" layer="51" ratio="9">GND1</text>
<text x="-7.5" y="-9" size="1.27" layer="51" ratio="9" rot="R90">VMOT</text>
<text x="-2.5" y="-9" size="1.27" layer="51" ratio="9" rot="R90">GND2</text>
<text x="13.2" y="1.1" size="1.27" layer="51" ratio="9" rot="R180">OUTB</text>
<text x="13.3" y="6.1" size="1.27" layer="51" ratio="9" rot="R180">OUTA1</text>
<text x="13.2" y="-5.4" size="1.27" layer="51" ratio="9" rot="R180">BYP</text>
<text x="-13" y="11.3" size="1.27" layer="51" ratio="9">OUTA2</text>
<text x="13.4" y="12.6" size="1.27" layer="51" ratio="9" rot="R180">OUTA3</text>
<hole x="15.875" y="-11.7729" drill="3"/>
</package>
</packages>
<symbols>
<symbol name="POLOLU_VNH2SP30">
<wire x1="-12.7" y1="17.78" x2="-12.7" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-20.32" x2="15.24" y2="-20.32" width="0.254" layer="94"/>
<wire x1="15.24" y1="-20.32" x2="15.24" y2="17.78" width="0.254" layer="94"/>
<wire x1="15.24" y1="17.78" x2="-12.7" y2="17.78" width="0.254" layer="94"/>
<text x="-12.7" y="18.542" size="1.6764" layer="95" ratio="12">&gt;NAME</text>
<text x="-12.7" y="-22.86" size="1.6764" layer="96">&gt;VALUE</text>
<pin name="INA" x="-15.24" y="10.16" visible="pin" length="short" direction="in"/>
<pin name="INB" x="-15.24" y="5.08" visible="pin" length="short" direction="in"/>
<pin name="ENA/DIAGA" x="-15.24" y="0" visible="pin" length="short" direction="oc"/>
<pin name="ENB/DIAGB" x="-15.24" y="-5.08" visible="pin" length="short" direction="oc"/>
<pin name="PWM" x="-15.24" y="15.24" visible="pin" length="short" direction="in"/>
<pin name="VIO" x="-15.24" y="-10.16" visible="pin" length="short" direction="pwr"/>
<pin name="GND@1" x="-15.24" y="-17.78" visible="pin" length="short" direction="pwr" swaplevel="2"/>
<pin name="OUTA@1" x="17.78" y="10.16" visible="pin" length="short" direction="out" swaplevel="1" rot="R180"/>
<pin name="OUTB" x="17.78" y="5.08" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="BYPASS" x="17.78" y="0" visible="pin" length="short" direction="pwr" rot="R180"/>
<pin name="OUTA@2" x="17.78" y="12.7" visible="pin" length="short" direction="out" swaplevel="1" rot="R180"/>
<pin name="OUTA@3" x="17.78" y="15.24" visible="pin" length="short" direction="out" swaplevel="1" rot="R180"/>
<pin name="VMOT" x="17.78" y="-10.16" visible="pin" length="short" direction="pwr" rot="R180"/>
<pin name="GND@2" x="17.78" y="-17.78" visible="pin" length="short" direction="pwr" swaplevel="2" rot="R180"/>
<pin name="SENSE" x="17.78" y="-5.08" visible="pin" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="POLOLU_VNH2SP30-MD01B" prefix="MOD">
<description>&lt;h3&gt;POLOLU VNH2SP30 MD01B Motor Driver Carrier Board&lt;/h3&gt;
&lt;p&gt;&lt;b&gt;With Current Sense Output&lt;/p&gt;

&lt;pre&gt;&lt;b&gt;
DEVICE VERSIONS&lt;/b&gt;
*  [none]:  plated auxilary OUTA connections
   -U   :  non-plated auxilary OUTA connections
   -X   :  no symbol-pins for OUTx, BYPASS, VMOT, GND2 (drawing elements only)&lt;/pre&gt;

&lt;pre&gt;&lt;b&gt;SOURCE&lt;/b&gt;
&lt;a href="www.pololu.com/" target="_blank"&gt;www.pololu.com/&lt;/a&gt;&lt;/pre&gt;

&lt;pre&gt;&lt;b&gt;SPECS&lt;/b&gt;
Operatingg voltage VMOT           5.5 .. 16 V
Logic Voltage      VIO            5 V typ.
MOSFET on-resistance (per leg):   19 mOhm max.
Max PWM frequency                 20 kHz
Current sense                     0.13 V/A
Over-voltage shutoff              16 V min. / 19 V typ.
Logic input high threshold        3.25 V min.
Time to overheat at 20 A           35 s
Time to overheat at 15 A          150 s
Current for infinite run time     14 A&lt;/pre&gt;

&lt;hr /&gt;
&lt;p&gt;&lt;author&gt;Author: Dipl.-Ing. FH Rainer Bayer&lt;/author&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="POLOLU_VNH2SP30" x="0" y="0"/>
</gates>
<devices>
<device name="" package="POLOLU_MD01B_P">
<connects>
<connect gate="G$1" pin="BYPASS" pad="BYP"/>
<connect gate="G$1" pin="ENA/DIAGA" pad="ENA"/>
<connect gate="G$1" pin="ENB/DIAGB" pad="ENB"/>
<connect gate="G$1" pin="GND@1" pad="GND1"/>
<connect gate="G$1" pin="GND@2" pad="GND2"/>
<connect gate="G$1" pin="INA" pad="INA"/>
<connect gate="G$1" pin="INB" pad="INB"/>
<connect gate="G$1" pin="OUTA@1" pad="OUTA1"/>
<connect gate="G$1" pin="OUTA@2" pad="OUTA2"/>
<connect gate="G$1" pin="OUTA@3" pad="OUTA3"/>
<connect gate="G$1" pin="OUTB" pad="OUTB"/>
<connect gate="G$1" pin="PWM" pad="PWM"/>
<connect gate="G$1" pin="SENSE" pad="SENSE"/>
<connect gate="G$1" pin="VIO" pad="VIO"/>
<connect gate="G$1" pin="VMOT" pad="VMOT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ArduinoMegaOutline">
<packages>
<package name="MEGAOUTLINE">
<description>Empty box</description>
<pad name="AREF" x="-26.67" y="24.13" drill="0.8"/>
<pad name="GND@1" x="-24.13" y="24.13" drill="0.8"/>
<pad name="13" x="-21.59" y="24.13" drill="0.8"/>
<pad name="12" x="-19.05" y="24.13" drill="0.8"/>
<pad name="11" x="-16.51" y="24.13" drill="0.8"/>
<pad name="10" x="-13.97" y="24.13" drill="0.8"/>
<pad name="9" x="-11.43" y="24.13" drill="0.8"/>
<pad name="8" x="-8.89" y="24.13" drill="0.8"/>
<pad name="7" x="-5.08" y="24.13" drill="0.8"/>
<pad name="6" x="-2.54" y="24.13" drill="0.8"/>
<pad name="5" x="0" y="24.13" drill="0.8"/>
<pad name="4" x="2.54" y="24.13" drill="0.8"/>
<pad name="3" x="5.08" y="24.13" drill="0.8"/>
<pad name="2" x="7.62" y="24.13" drill="0.8"/>
<pad name="1" x="10.16" y="24.13" drill="0.8"/>
<pad name="0" x="12.7" y="24.13" drill="0.8"/>
<pad name="14" x="17.78" y="24.13" drill="0.8"/>
<pad name="15" x="20.32" y="24.13" drill="0.8"/>
<pad name="16" x="22.86" y="24.13" drill="0.8"/>
<pad name="17" x="25.4" y="24.13" drill="0.8"/>
<pad name="18" x="27.94" y="24.13" drill="0.8"/>
<pad name="19" x="30.48" y="24.13" drill="0.8"/>
<pad name="20" x="33.02" y="24.13" drill="0.8"/>
<pad name="21" x="35.56" y="24.13" drill="0.8"/>
<pad name="GND@4" x="43.18" y="24.13" drill="0.8"/>
<pad name="22" x="43.18" y="21.59" drill="0.8"/>
<pad name="24" x="43.18" y="19.05" drill="0.8"/>
<pad name="26" x="43.18" y="16.51" drill="0.8"/>
<pad name="28" x="43.18" y="13.97" drill="0.8"/>
<pad name="30" x="43.18" y="11.43" drill="0.8"/>
<pad name="32" x="43.18" y="8.89" drill="0.8"/>
<pad name="34" x="43.18" y="6.35" drill="0.8"/>
<pad name="36" x="43.18" y="3.81" drill="0.8"/>
<pad name="38" x="43.18" y="1.27" drill="0.8"/>
<pad name="40" x="43.18" y="-1.27" drill="0.8"/>
<pad name="42" x="43.18" y="-3.81" drill="0.8"/>
<pad name="44" x="43.18" y="-6.35" drill="0.8"/>
<pad name="46" x="43.18" y="-8.89" drill="0.8"/>
<pad name="48" x="43.18" y="-11.43" drill="0.8"/>
<pad name="50" x="43.18" y="-13.97" drill="0.8"/>
<pad name="52" x="43.18" y="-16.51" drill="0.8"/>
<pad name="GND@6" x="43.18" y="-19.05" drill="0.8"/>
<pad name="GND@7" x="45.72" y="-19.05" drill="0.8"/>
<pad name="53" x="45.72" y="-16.51" drill="0.8"/>
<pad name="51" x="45.72" y="-13.97" drill="0.8"/>
<pad name="49" x="45.72" y="-11.43" drill="0.8"/>
<pad name="47" x="45.72" y="-8.89" drill="0.8"/>
<pad name="45" x="45.72" y="-6.35" drill="0.8"/>
<pad name="43" x="45.72" y="-3.81" drill="0.8"/>
<pad name="41" x="45.72" y="-1.27" drill="0.8"/>
<pad name="39" x="45.72" y="1.27" drill="0.8"/>
<pad name="37" x="45.72" y="3.81" drill="0.8"/>
<pad name="35" x="45.72" y="6.35" drill="0.8"/>
<pad name="33" x="45.72" y="8.89" drill="0.8"/>
<pad name="31" x="45.72" y="11.43" drill="0.8"/>
<pad name="29" x="45.72" y="13.97" drill="0.8"/>
<pad name="27" x="45.72" y="16.51" drill="0.8"/>
<pad name="25" x="45.72" y="19.05" drill="0.8"/>
<pad name="23" x="45.72" y="21.59" drill="0.8"/>
<pad name="GND@5" x="45.72" y="24.13" drill="0.8"/>
<pad name="A15" x="40.64" y="-24.13" drill="0.8"/>
<pad name="A14" x="38.1" y="-24.13" drill="0.8"/>
<pad name="A13" x="35.56" y="-24.13" drill="0.8"/>
<pad name="A12" x="33.02" y="-24.13" drill="0.8"/>
<pad name="A11" x="30.48" y="-24.13" drill="0.8"/>
<pad name="A10" x="27.94" y="-24.13" drill="0.8"/>
<pad name="A9" x="25.4" y="-24.13" drill="0.8"/>
<pad name="A8" x="22.86" y="-24.13" drill="0.8"/>
<pad name="A7" x="17.78" y="-24.13" drill="0.8"/>
<pad name="A6" x="15.24" y="-24.13" drill="0.8"/>
<pad name="A5" x="12.7" y="-24.13" drill="0.8"/>
<pad name="A4" x="10.16" y="-24.13" drill="0.8"/>
<pad name="A3" x="7.62" y="-24.13" drill="0.8"/>
<pad name="A2" x="5.08" y="-24.13" drill="0.8"/>
<pad name="A1" x="2.54" y="-24.13" drill="0.8"/>
<pad name="A0" x="0" y="-24.13" drill="0.8"/>
<pad name="VIN" x="-5.08" y="-24.13" drill="0.8"/>
<pad name="GND@3" x="-7.62" y="-24.13" drill="0.8"/>
<pad name="GND@2" x="-10.16" y="-24.13" drill="0.8"/>
<pad name="5V" x="-12.7" y="-24.13" drill="0.8"/>
<pad name="3V3" x="-15.24" y="-24.13" drill="0.8"/>
<pad name="RESET" x="-17.78" y="-24.13" drill="0.8"/>
<wire x1="-50.8" y1="26.67" x2="50.8" y2="26.67" width="0.254" layer="21"/>
<wire x1="50.8" y1="26.67" x2="50.8" y2="-26.67" width="0.254" layer="21"/>
<wire x1="50.8" y1="-26.67" x2="-50.8" y2="-26.67" width="0.254" layer="21"/>
<wire x1="-50.8" y1="-26.67" x2="-50.8" y2="26.67" width="0.254" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MEGA_SYMBOL">
<description>Symbol as Mega card</description>
<wire x1="50.8" y1="-26.67" x2="-50.8" y2="-26.67" width="0.254" layer="94"/>
<wire x1="-50.8" y1="-26.67" x2="-50.8" y2="26.67" width="0.254" layer="94"/>
<wire x1="-50.8" y1="26.67" x2="50.8" y2="26.67" width="0.254" layer="94"/>
<wire x1="50.8" y1="26.67" x2="50.8" y2="-26.67" width="0.254" layer="94"/>
<pin name="AREF" x="-26.67" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="GND@1" x="-24.13" y="24.13" visible="pin" length="middle" rot="R90"/>
<pin name="13" x="-21.59" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="12" x="-19.05" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="11" x="-16.51" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="10" x="-13.97" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="9" x="-11.43" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="8" x="-8.89" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="7" x="-5.08" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="6" x="-2.54" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="5" x="0" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="4" x="2.54" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="3" x="5.08" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="2" x="7.62" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="1" x="10.16" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="0" x="12.7" y="24.13" visible="pad" length="middle" rot="R90"/>
<text x="10.16" y="16.51" size="1.27" layer="94" rot="R90">Tx</text>
<text x="12.7" y="16.51" size="1.27" layer="94" rot="R90">Rx</text>
<pin name="14" x="17.78" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="15" x="20.32" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="16" x="22.86" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="17" x="25.4" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="18" x="27.94" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="19" x="30.48" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="20" x="33.02" y="24.13" visible="pad" length="middle" rot="R90"/>
<pin name="21" x="35.56" y="24.13" visible="pad" length="middle" rot="R90"/>
<text x="17.78" y="15.24" size="1.27" layer="94" rot="R90">Tx3</text>
<text x="20.32" y="15.24" size="1.27" layer="94" rot="R90">Rx3</text>
<text x="22.86" y="15.24" size="1.27" layer="94" rot="R90">Tx2</text>
<text x="25.4" y="15.24" size="1.27" layer="94" rot="R90">Rx2</text>
<text x="27.94" y="15.24" size="1.27" layer="94" rot="R90">Tx1</text>
<text x="30.48" y="15.24" size="1.27" layer="94" rot="R90">Rx1</text>
<text x="33.02" y="15.24" size="1.27" layer="94" rot="R90">SDA</text>
<text x="35.56" y="15.24" size="1.27" layer="94" rot="R90">SCL</text>
<pin name="GND@4" x="43.18" y="24.13" visible="pin" length="middle" rot="R90"/>
<pin name="GND@5" x="45.72" y="24.13" visible="pin" length="middle" rot="R90"/>
<pin name="23" x="45.72" y="21.59" visible="pad" length="short"/>
<pin name="25" x="45.72" y="19.05" visible="pad" length="short"/>
<pin name="27" x="45.72" y="16.51" visible="pad" length="short"/>
<pin name="29" x="45.72" y="13.97" visible="pad" length="short"/>
<pin name="31" x="45.72" y="11.43" visible="pad" length="short"/>
<pin name="33" x="45.72" y="8.89" visible="pad" length="short"/>
<pin name="35" x="45.72" y="6.35" visible="pad" length="short"/>
<pin name="37" x="45.72" y="3.81" visible="pad" length="short"/>
<pin name="39" x="45.72" y="1.27" visible="pad" length="short"/>
<pin name="41" x="45.72" y="-1.27" visible="pad" length="short"/>
<pin name="43" x="45.72" y="-3.81" visible="pad" length="short"/>
<pin name="45" x="45.72" y="-6.35" visible="pad" length="short"/>
<pin name="47" x="45.72" y="-8.89" visible="pad" length="short"/>
<pin name="49" x="45.72" y="-11.43" visible="pad" length="short"/>
<pin name="51" x="45.72" y="-13.97" visible="pad" length="short"/>
<pin name="53" x="45.72" y="-16.51" visible="pad" length="short"/>
<pin name="GND@7" x="45.72" y="-19.05" visible="pin" length="short"/>
<pin name="22" x="43.18" y="21.59" visible="pad" length="short" rot="R180"/>
<pin name="24" x="43.18" y="19.05" visible="pad" length="short" rot="R180"/>
<pin name="26" x="43.18" y="16.51" visible="pad" length="short" rot="R180"/>
<pin name="28" x="43.18" y="13.97" visible="pad" length="short" rot="R180"/>
<pin name="30" x="43.18" y="11.43" visible="pad" length="short" rot="R180"/>
<pin name="32" x="43.18" y="8.89" visible="pad" length="short" rot="R180"/>
<pin name="34" x="43.18" y="6.35" visible="pad" length="short" rot="R180"/>
<pin name="36" x="43.18" y="3.81" visible="pad" length="short" rot="R180"/>
<pin name="38" x="43.18" y="1.27" visible="pad" length="short" rot="R180"/>
<pin name="40" x="43.18" y="-1.27" visible="pad" length="short" rot="R180"/>
<pin name="42" x="43.18" y="-3.81" visible="pad" length="short" rot="R180"/>
<pin name="44" x="43.18" y="-6.35" visible="pad" length="short" rot="R180"/>
<pin name="46" x="43.18" y="-8.89" visible="pad" length="short" rot="R180"/>
<pin name="48" x="43.18" y="-11.43" visible="pad" length="short" rot="R180"/>
<pin name="50" x="43.18" y="-13.97" visible="pad" length="short" rot="R180"/>
<pin name="52" x="43.18" y="-16.51" visible="pad" length="short" rot="R180"/>
<pin name="GND@6" x="43.18" y="-19.05" visible="pin" length="short" rot="R180"/>
<pin name="A15" x="40.64" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A14" x="38.1" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A13" x="35.56" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A12" x="33.02" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A11" x="30.48" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A10" x="27.94" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A9" x="25.4" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A8" x="22.86" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A7" x="17.78" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A6" x="15.24" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A5" x="12.7" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A4" x="10.16" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A3" x="7.62" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A2" x="5.08" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A1" x="2.54" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="A0" x="0" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="VIN" x="-5.08" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="GND@3" x="-7.62" y="-24.13" visible="pin" length="middle" rot="R270"/>
<pin name="GND@2" x="-10.16" y="-24.13" visible="pin" length="middle" rot="R270"/>
<pin name="5V" x="-12.7" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="3V3" x="-15.24" y="-24.13" visible="pad" length="middle" rot="R270"/>
<pin name="RESET" x="-17.78" y="-24.13" visible="pad" length="middle" rot="R270"/>
<text x="12.7" y="-19.05" size="1.778" layer="94" font="vector">Analog in</text>
<text x="35.56" y="-5.08" size="1.778" layer="94" font="vector" rot="R90">Digital</text>
<text x="-19.05" y="15.24" size="1.778" layer="94" font="vector">PWM and digital</text>
<wire x1="-21.59" y1="20.32" x2="-21.59" y2="17.78" width="0.254" layer="94"/>
<wire x1="-20.32" y1="16.51" x2="-21.59" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="20.32" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="17.78" x2="3.81" y2="16.51" width="0.254" layer="94"/>
<text x="12.7" y="10.16" size="1.778" layer="94" font="vector">Communication</text>
<wire x1="10.16" y1="15.24" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="12.7" x2="11.43" y2="11.43" width="0.254" layer="94"/>
<wire x1="35.56" y1="13.97" x2="35.56" y2="12.7" width="0.254" layer="94"/>
<wire x1="35.56" y1="12.7" x2="33.02" y2="11.43" width="0.254" layer="94"/>
<text x="-21.59" y="-1.27" size="1.778" layer="94">Arduino mega
2560</text>
<wire x1="-53.34" y1="-13.97" x2="-39.37" y2="-13.97" width="0.254" layer="94"/>
<wire x1="-39.37" y1="-13.97" x2="-39.37" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-39.37" y1="-22.86" x2="-53.34" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-53.34" y1="-22.86" x2="-53.34" y2="-13.97" width="0.254" layer="94"/>
<wire x1="-55.88" y1="22.86" x2="-40.64" y2="22.86" width="0.254" layer="94"/>
<wire x1="-40.64" y1="22.86" x2="-40.64" y2="10.16" width="0.254" layer="94"/>
<wire x1="-40.64" y1="10.16" x2="-55.88" y2="10.16" width="0.254" layer="94"/>
<wire x1="-55.88" y1="10.16" x2="-55.88" y2="22.86" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MEGA_DEVICE">
<description>mega card as device</description>
<gates>
<gate name="G$1" symbol="MEGA_SYMBOL" x="0" y="15.24"/>
</gates>
<devices>
<device name="" package="MEGAOUTLINE">
<connects>
<connect gate="G$1" pin="0" pad="0"/>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="41" pad="41"/>
<connect gate="G$1" pin="42" pad="42"/>
<connect gate="G$1" pin="43" pad="43"/>
<connect gate="G$1" pin="44" pad="44"/>
<connect gate="G$1" pin="45" pad="45"/>
<connect gate="G$1" pin="46" pad="46"/>
<connect gate="G$1" pin="47" pad="47"/>
<connect gate="G$1" pin="48" pad="48"/>
<connect gate="G$1" pin="49" pad="49"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="50" pad="50"/>
<connect gate="G$1" pin="51" pad="51"/>
<connect gate="G$1" pin="52" pad="52"/>
<connect gate="G$1" pin="53" pad="53"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A11" pad="A11"/>
<connect gate="G$1" pin="A12" pad="A12"/>
<connect gate="G$1" pin="A13" pad="A13"/>
<connect gate="G$1" pin="A14" pad="A14"/>
<connect gate="G$1" pin="A15" pad="A15"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="A9" pad="A9"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="GND@3" pad="GND@3"/>
<connect gate="G$1" pin="GND@4" pad="GND@4"/>
<connect gate="G$1" pin="GND@5" pad="GND@5"/>
<connect gate="G$1" pin="GND@6" pad="GND@6"/>
<connect gate="G$1" pin="GND@7" pad="GND@7"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="tango">
<packages>
<package name="CON2">
<wire x1="-2.54" y1="1.016" x2="2.286" y2="1.016" width="0.254" layer="21"/>
<wire x1="2.286" y1="1.016" x2="2.286" y2="-1.524" width="0.254" layer="21"/>
<wire x1="2.286" y1="-1.524" x2="-2.54" y2="-1.524" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.524" x2="-2.54" y2="1.016" width="0.254" layer="21"/>
<pad name="P$1" x="-1.27" y="-0.254" drill="1" diameter="1.778" shape="square"/>
<pad name="P$2" x="1.016" y="-0.254" drill="1" diameter="1.778" shape="square"/>
<text x="-3.175" y="-3.175" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="BAT">
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.127" layer="21"/>
<wire x1="3.175" y1="1.905" x2="3.175" y2="-1.905" width="0.127" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-1.905" x2="-3.175" y2="1.905" width="0.127" layer="21"/>
<pad name="+" x="-1.524" y="0" drill="1.1" diameter="2.1844" shape="square"/>
<pad name="-" x="1.524" y="0" drill="1.1" diameter="2.1844"/>
<text x="-4.572" y="0" size="1.27" layer="21">+</text>
<text x="3.81" y="0" size="1.27" layer="21">-</text>
<text x="-1.905" y="2.54" size="1.27" layer="21">Batt</text>
<text x="-3.175" y="-3.81" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="SOLENOID">
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-3.556" y1="0" x2="-4.826" y2="0" width="0.254" layer="94"/>
<wire x1="3.81" y1="0" x2="4.826" y2="0" width="0.254" layer="94"/>
<circle x="0" y="0" radius="3.5921" width="0.254" layer="94"/>
<text x="-3.556" y="4.572" size="1.27" layer="94">Solenoid</text>
<text x="-2.794" y="-0.508" size="1.016" layer="94">A</text>
<text x="2.032" y="-0.508" size="1.016" layer="94">K</text>
<text x="-4.572" y="-5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="+" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<pin name="-" x="7.62" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="9VBAT">
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.524" width="0.4064" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="-1.524" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0.508" x2="-1.27" y2="-0.508" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0.508" x2="1.27" y2="-0.508" width="0.4064" layer="94"/>
<wire x1="2.54" y1="0" x2="1.524" y2="0" width="0.3048" layer="94"/>
<text x="-3.81" y="2.032" size="1.016" layer="94">9V battery</text>
<text x="-5.08" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<pin name="-" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="+" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="-MOTOR">
<gates>
<gate name="G$1" symbol="SOLENOID" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CON2">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="-9VBAT">
<gates>
<gate name="G$1" symbol="9VBAT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BAT">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="rotary-encoder">
<packages>
<package name="62P">
<wire x1="-8.32" y1="-7.935" x2="8.32" y2="-7.935" width="0.127" layer="21"/>
<wire x1="8.32" y1="-7.935" x2="8.32" y2="7.935" width="0.127" layer="21"/>
<wire x1="8.32" y1="7.935" x2="-8.32" y2="7.935" width="0.127" layer="21"/>
<wire x1="-8.32" y1="7.935" x2="-8.32" y2="-7.935" width="0.127" layer="21"/>
<wire x1="-6.35" y1="8.255" x2="-6.35" y2="9.525" width="0.127" layer="51"/>
<wire x1="-6.35" y1="9.525" x2="-3.81" y2="9.525" width="0.127" layer="51"/>
<wire x1="-3.81" y1="9.525" x2="-3.81" y2="8.255" width="0.127" layer="51"/>
<wire x1="-1.27" y1="8.255" x2="-1.27" y2="9.525" width="0.127" layer="51"/>
<wire x1="-1.27" y1="9.525" x2="1.27" y2="9.525" width="0.127" layer="51"/>
<wire x1="1.27" y1="9.525" x2="1.27" y2="8.255" width="0.127" layer="51"/>
<wire x1="3.81" y1="8.255" x2="3.81" y2="9.525" width="0.127" layer="51"/>
<wire x1="3.81" y1="9.525" x2="6.35" y2="9.525" width="0.127" layer="51"/>
<wire x1="6.35" y1="9.525" x2="6.35" y2="8.255" width="0.127" layer="51"/>
<wire x1="0.635" y1="-8.255" x2="0.635" y2="-9.525" width="0.127" layer="51"/>
<wire x1="0.635" y1="-9.525" x2="1.905" y2="-9.525" width="0.127" layer="51"/>
<wire x1="1.905" y1="-9.525" x2="1.905" y2="-8.255" width="0.127" layer="51"/>
<wire x1="3.175" y1="-8.255" x2="3.175" y2="-9.525" width="0.127" layer="51"/>
<wire x1="3.175" y1="-9.525" x2="4.445" y2="-9.525" width="0.127" layer="51"/>
<wire x1="4.445" y1="-9.525" x2="4.445" y2="-8.255" width="0.127" layer="51"/>
<wire x1="5.715" y1="-8.255" x2="5.715" y2="-9.525" width="0.127" layer="51"/>
<wire x1="5.715" y1="-9.525" x2="6.985" y2="-9.525" width="0.127" layer="51"/>
<wire x1="6.985" y1="-9.525" x2="6.985" y2="-8.255" width="0.127" layer="51"/>
<circle x="0" y="0" radius="2.38" width="0.127" layer="21"/>
<circle x="0" y="0" radius="4.76" width="0.127" layer="21"/>
<pad name="1" x="6.35" y="-10.24" drill="0.8"/>
<pad name="2" x="3.81" y="-10.24" drill="0.8"/>
<pad name="3" x="1.27" y="-10.24" drill="0.8"/>
<pad name="4" x="5.08" y="10.24" drill="0.8"/>
<pad name="5" x="0" y="10.24" drill="0.8"/>
<pad name="6" x="-5.08" y="10.24" drill="0.8"/>
<pad name="M1" x="-8.68" y="5.27" drill="2.1" shape="square"/>
<pad name="M2" x="-8.68" y="-5.27" drill="2.1" shape="square"/>
<pad name="M3" x="8.68" y="-5.27" drill="2.1" shape="square"/>
<pad name="M4" x="8.68" y="5.27" drill="2.1" shape="square"/>
<text x="-7.62" y="-10.16" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-6.985" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="62P22">
<wire x1="7.62" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="7.62" y2="2.54" width="0.127" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="5.715" width="0.127" layer="94"/>
<wire x1="0" y1="5.715" x2="2.54" y2="5.715" width="0.127" layer="94"/>
<wire x1="2.54" y1="5.715" x2="2.54" y2="3.81" width="0.127" layer="94"/>
<wire x1="2.54" y1="3.81" x2="5.08" y2="3.81" width="0.127" layer="94"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="5.715" width="0.127" layer="94"/>
<wire x1="5.08" y1="5.715" x2="6.35" y2="5.715" width="0.127" layer="94"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.127" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="0.635" width="0.127" layer="94"/>
<wire x1="1.27" y1="0.635" x2="3.81" y2="0.635" width="0.127" layer="94"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-1.27" width="0.127" layer="94"/>
<wire x1="3.81" y1="-1.27" x2="6.35" y2="-1.27" width="0.127" layer="94"/>
<wire x1="6.35" y1="-1.27" x2="6.35" y2="0.635" width="0.127" layer="94"/>
<wire x1="-6.35" y1="1.905" x2="-5.08" y2="-2.54" width="0.127" layer="94" curve="-211.890792"/>
<wire x1="-3.81" y1="-1.27" x2="-5.08" y2="-2.54" width="0.127" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-3.81" y2="-3.175" width="0.127" layer="94"/>
<wire x1="0" y1="-10.16" x2="0" y2="-7.62" width="0.254" layer="94"/>
<text x="2.54" y="-10.16" size="1.27" layer="95">&gt;NAME</text>
<text x="8.89" y="-6.35" size="1.27" layer="96">&gt;VALUE</text>
<pin name="A" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="B" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="GND" x="0" y="-12.7" length="short" direction="sup" rot="R90"/>
<pin name="V+" x="0" y="12.7" length="middle" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="62P*0" prefix="RE">
<gates>
<gate name="G$1" symbol="62P22" x="0" y="0"/>
</gates>
<devices>
<device name="" package="62P">
<connects>
<connect gate="G$1" pin="A" pad="4"/>
<connect gate="G$1" pin="B" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V+" pad="1"/>
</connects>
<technologies>
<technology name="16-H"/>
<technology name="16-L"/>
<technology name="16-N"/>
<technology name="22-H"/>
<technology name="22-L"/>
<technology name="22-N"/>
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
<part name="EMS30AH-BRIDGE" library="_hhn_Pololu" deviceset="POLOLU_VNH2SP30-MD01B" device=""/>
<part name="U$1" library="ArduinoMegaOutline" deviceset="MEGA_DEVICE" device=""/>
<part name="MOTORDCPG45" library="tango" deviceset="-MOTOR" device=""/>
<part name="LIPO6S24V" library="tango" deviceset="-9VBAT" device=""/>
<part name="ENCODE" library="rotary-encoder" deviceset="62P*0" device="" technology="16-H"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="EMS30AH-BRIDGE" gate="G$1" x="127" y="55.88" smashed="yes">
<attribute name="NAME" x="114.3" y="74.422" size="1.6764" layer="95" ratio="12"/>
<attribute name="VALUE" x="114.3" y="33.02" size="1.6764" layer="96"/>
</instance>
<instance part="U$1" gate="G$1" x="45.72" y="55.88" smashed="yes" rot="R270"/>
<instance part="MOTORDCPG45" gate="G$1" x="180.34" y="55.88" smashed="yes">
<attribute name="NAME" x="175.768" y="50.038" size="1.778" layer="95"/>
</instance>
<instance part="LIPO6S24V" gate="G$1" x="172.72" y="22.86" smashed="yes" rot="R180">
<attribute name="NAME" x="177.8" y="17.78" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="ENCODE" gate="G$1" x="208.28" y="53.34" smashed="yes">
<attribute name="NAME" x="210.82" y="43.18" size="1.27" layer="95"/>
<attribute name="VALUE" x="217.17" y="46.99" size="1.27" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="VMOT"/>
<wire x1="144.78" y1="45.72" x2="172.72" y2="45.72" width="0.1524" layer="91"/>
<wire x1="172.72" y1="45.72" x2="172.72" y2="27.94" width="0.1524" layer="91"/>
<pinref part="LIPO6S24V" gate="G$1" pin="+"/>
<wire x1="177.8" y1="22.86" x2="177.8" y2="27.94" width="0.1524" layer="91"/>
<wire x1="177.8" y1="27.94" x2="172.72" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="GND@2"/>
<wire x1="144.78" y1="38.1" x2="167.64" y2="38.1" width="0.1524" layer="91"/>
<pinref part="LIPO6S24V" gate="G$1" pin="-"/>
<wire x1="167.64" y1="22.86" x2="167.64" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="OUTA@2"/>
<pinref part="MOTORDCPG45" gate="G$1" pin="+"/>
<wire x1="144.78" y1="68.58" x2="172.72" y2="68.58" width="0.1524" layer="91"/>
<wire x1="172.72" y1="68.58" x2="172.72" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="OUTA@3"/>
<wire x1="144.78" y1="71.12" x2="187.96" y2="71.12" width="0.1524" layer="91"/>
<pinref part="MOTORDCPG45" gate="G$1" pin="-"/>
<wire x1="187.96" y1="71.12" x2="187.96" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="99.06" y1="55.88" x2="99.06" y2="71.12" width="0.1524" layer="91"/>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="PWM"/>
<wire x1="99.06" y1="71.12" x2="111.76" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="5"/>
<wire x1="69.85" y1="55.88" x2="99.06" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="6"/>
<wire x1="69.85" y1="58.42" x2="111.76" y2="58.42" width="0.1524" layer="91"/>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="INB"/>
<wire x1="111.76" y1="58.42" x2="111.76" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="7"/>
<wire x1="69.85" y1="60.96" x2="104.14" y2="60.96" width="0.1524" layer="91"/>
<wire x1="104.14" y1="60.96" x2="104.14" y2="66.04" width="0.1524" layer="91"/>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="INA"/>
<wire x1="104.14" y1="66.04" x2="111.76" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="ENCODE" gate="G$1" pin="A"/>
<wire x1="220.98" y1="55.88" x2="238.76" y2="55.88" width="0.1524" layer="91"/>
<wire x1="238.76" y1="55.88" x2="238.76" y2="15.24" width="0.1524" layer="91"/>
<wire x1="238.76" y1="15.24" x2="83.82" y2="15.24" width="0.1524" layer="91"/>
<wire x1="83.82" y1="15.24" x2="83.82" y2="67.31" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="9"/>
<wire x1="83.82" y1="67.31" x2="69.85" y2="67.31" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="69.85" y1="48.26" x2="81.28" y2="48.26" width="0.1524" layer="91"/>
<wire x1="81.28" y1="48.26" x2="81.28" y2="17.78" width="0.1524" layer="91"/>
<wire x1="81.28" y1="17.78" x2="233.68" y2="17.78" width="0.1524" layer="91"/>
<pinref part="ENCODE" gate="G$1" pin="B"/>
<wire x1="233.68" y1="17.78" x2="233.68" y2="50.8" width="0.1524" layer="91"/>
<wire x1="233.68" y1="50.8" x2="220.98" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<wire x1="93.98" y1="80.01" x2="93.98" y2="78.74" width="0.1524" layer="91"/>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="GND@1"/>
<wire x1="93.98" y1="78.74" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
<wire x1="93.98" y1="38.1" x2="111.76" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND@1"/>
<wire x1="69.85" y1="80.01" x2="93.98" y2="80.01" width="0.1524" layer="91"/>
<wire x1="93.98" y1="78.74" x2="195.58" y2="78.74" width="0.1524" layer="91"/>
<junction x="93.98" y="78.74"/>
<wire x1="195.58" y1="78.74" x2="195.58" y2="38.1" width="0.1524" layer="91"/>
<pinref part="ENCODE" gate="G$1" pin="GND"/>
<wire x1="195.58" y1="38.1" x2="208.28" y2="38.1" width="0.1524" layer="91"/>
<wire x1="208.28" y1="38.1" x2="208.28" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V+" class="0">
<segment>
<pinref part="ENCODE" gate="G$1" pin="V+"/>
<wire x1="208.28" y1="66.04" x2="208.28" y2="81.28" width="0.1524" layer="91"/>
<wire x1="208.28" y1="81.28" x2="99.06" y2="81.28" width="0.1524" layer="91"/>
<wire x1="99.06" y1="81.28" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="ENA/DIAGA"/>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="ENB/DIAGB"/>
<wire x1="111.76" y1="55.88" x2="111.76" y2="50.8" width="0.1524" layer="91"/>
<pinref part="EMS30AH-BRIDGE" gate="G$1" pin="VIO"/>
<wire x1="111.76" y1="50.8" x2="111.76" y2="45.72" width="0.1524" layer="91"/>
<junction x="111.76" y="50.8"/>
<wire x1="111.76" y1="45.72" x2="88.9" y2="45.72" width="0.1524" layer="91"/>
<wire x1="88.9" y1="45.72" x2="88.9" y2="93.98" width="0.1524" layer="91"/>
<junction x="111.76" y="45.72"/>
<wire x1="88.9" y1="93.98" x2="5.08" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="5V"/>
<wire x1="5.08" y1="93.98" x2="5.08" y2="68.58" width="0.1524" layer="91"/>
<wire x1="5.08" y1="68.58" x2="21.59" y2="68.58" width="0.1524" layer="91"/>
<wire x1="99.06" y1="93.98" x2="88.9" y2="93.98" width="0.1524" layer="91"/>
<junction x="88.9" y="93.98"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
